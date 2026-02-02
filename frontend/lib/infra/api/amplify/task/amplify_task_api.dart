import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/graphql/gen/schema.graphql.dart';
import 'package:todo/infra/api/graphql/gen/tasks_by_owner_created_at.graphql.dart';
import 'package:todo/infra/api/graphql/gen/tasks_by_owner_datetime.graphql.dart';
import 'package:todo/infra/api/graphql/gen/tasks_by_owner_title.graphql.dart';
import 'package:todo/infra/api/graphql/gen/tasks_by_owner_updated_at.graphql.dart';
import 'package:todo/infra/api/amplify/task/amplify_task_mapper.dart';
import 'package:todo/infra/api/task/task_api.dart';

class AmplifyTaskApi implements TaskApi {
  AmplifyTaskApi({AmplifyTaskMapper? mapper})
    : _mapper = mapper ?? const AmplifyTaskMapper();

  final AmplifyTaskMapper _mapper;

  @override
  Future<TaskApiPage> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
    required int limit,
    String? nextToken,
  }) {
    return switch (sortSpec.key) {
      SortKey.createdAt => _fetchByCreatedAt(
        userId: userId,
        limit: limit,
        nextToken: nextToken,
        direction: sortSpec.direction,
      ),
      SortKey.updatedAt => _fetchByUpdatedAt(
        userId: userId,
        limit: limit,
        nextToken: nextToken,
        direction: sortSpec.direction,
      ),
      SortKey.dueAt => _fetchByDatetime(
        userId: userId,
        limit: limit,
        nextToken: nextToken,
        direction: sortSpec.direction,
      ),
      SortKey.title => _fetchByTitle(
        userId: userId,
        limit: limit,
        nextToken: nextToken,
        direction: sortSpec.direction,
      ),
    };
  }

  @override
  Future<void> createTask(Task task) async {
    await _mutateRaw(
      _createTaskWithLimitMutation,
      {
        'id': task.id,
        'title': task.title,
        'description': task.description,
        'datetime': task.datetime?.toUtc().toIso8601String(),
        'createdAt': task.createdAt.toUtc().toIso8601String(),
        'updatedAt': task.updatedAt.toUtc().toIso8601String(),
        'isCompleted': task.isCompleted ?? false,
      },
    );
  }

  @override
  Future<void> updateTask(Task task) async {
    final apiTask = _mapper.toApi(task);
    final request = ModelMutations.update(apiTask);
    final response = await Amplify.API.mutate(request: request).response;
    if (response.errors.isNotEmpty) {
      throw ApiOperationException(
        _formatErrors(response.errors),
        recoverySuggestion: 'Check your network connection and try again.',
      );
    }
  }

  @override
  Future<void> deleteTask(TaskId id) async {
    await _mutateRaw(
      _deleteTaskWithLimitMutation,
      {
        'id': id.id,
      },
    );
  }

  Enum$ModelSortDirection _sortDirection(SortDirection direction) {
    return direction == SortDirection.asc
        ? Enum$ModelSortDirection.ASC
        : Enum$ModelSortDirection.DESC;
  }

  String _formatErrors(List<GraphQLResponseError> errors) {
    return errors.map((error) => error.message).join(', ');
  }

  Future<TaskApiPage> _fetchByCreatedAt({
    required UserId userId,
    required int limit,
    required SortDirection direction,
    String? nextToken,
  }) {
    return _fetchPage(
      document: documentNodeQueryTasksByOwnerCreatedAt,
      variables: Variables$Query$TasksByOwnerCreatedAt(
        owner: userId.id,
        limit: limit,
        nextToken: nextToken,
        sortDirection: _sortDirection(direction),
      ).toJson(),
      fromJson: Query$TasksByOwnerCreatedAt.fromJson,
      getConnection: (result) => result.tasksByOwnerCreatedAt,
      getItems: (connection) => connection.items.cast<Object?>(),
      getNextToken: (connection) => connection.nextToken,
    );
  }

  Future<TaskApiPage> _fetchByUpdatedAt({
    required UserId userId,
    required int limit,
    required SortDirection direction,
    String? nextToken,
  }) {
    return _fetchPage(
      document: documentNodeQueryTasksByOwnerUpdatedAt,
      variables: Variables$Query$TasksByOwnerUpdatedAt(
        owner: userId.id,
        limit: limit,
        nextToken: nextToken,
        sortDirection: _sortDirection(direction),
      ).toJson(),
      fromJson: Query$TasksByOwnerUpdatedAt.fromJson,
      getConnection: (result) => result.tasksByOwnerUpdatedAt,
      getItems: (connection) => connection.items.cast<Object?>(),
      getNextToken: (connection) => connection.nextToken,
    );
  }

  Future<TaskApiPage> _fetchByDatetime({
    required UserId userId,
    required int limit,
    required SortDirection direction,
    String? nextToken,
  }) {
    return _fetchPage(
      document: documentNodeQueryTasksByOwnerDatetime,
      variables: Variables$Query$TasksByOwnerDatetime(
        owner: userId.id,
        limit: limit,
        nextToken: nextToken,
        sortDirection: _sortDirection(direction),
      ).toJson(),
      fromJson: Query$TasksByOwnerDatetime.fromJson,
      getConnection: (result) => result.tasksByOwnerDatetime,
      getItems: (connection) => connection.items.cast<Object?>(),
      getNextToken: (connection) => connection.nextToken,
    );
  }

  Future<TaskApiPage> _fetchByTitle({
    required UserId userId,
    required int limit,
    required SortDirection direction,
    String? nextToken,
  }) {
    return _fetchPage(
      document: documentNodeQueryTasksByOwnerTitle,
      variables: Variables$Query$TasksByOwnerTitle(
        owner: userId.id,
        limit: limit,
        nextToken: nextToken,
        sortDirection: _sortDirection(direction),
      ).toJson(),
      fromJson: Query$TasksByOwnerTitle.fromJson,
      getConnection: (result) => result.tasksByOwnerTitle,
      getItems: (connection) => connection.items.cast<Object?>(),
      getNextToken: (connection) => connection.nextToken,
    );
  }

  Future<Map<String, dynamic>?> _query(
    DocumentNode document,
    Map<String, dynamic> variables,
  ) async {
    final request = GraphQLRequest<String>(
      document: printNode(document),
      variables: variables,
    );
    final response = await Amplify.API.query(request: request).response;
    return _handleResponse(response);
  }

  Future<Map<String, dynamic>?> _mutateRaw(
    String document,
    Map<String, dynamic> variables,
  ) async {
    final request = GraphQLRequest<String>(
      document: document,
      variables: variables,
    );
    final response = await Amplify.API.mutate(request: request).response;
    return _handleResponse(response);
  }

  Map<String, dynamic>? _handleResponse(GraphQLResponse<String> response) {
    if (response.errors.isNotEmpty) {
      throw ApiOperationException(
        _formatErrors(response.errors),
        recoverySuggestion: 'Check your network connection and try again.',
      );
    }

    final payload = response.data;
    if (payload == null) {
      return null;
    }
    return jsonDecode(payload) as Map<String, dynamic>;
  }

  Future<TaskApiPage> _fetchPage<Q, C>({
    required DocumentNode document,
    required Map<String, dynamic> variables,
    required Q Function(Map<String, dynamic>) fromJson,
    required C? Function(Q result) getConnection,
    required List<Object?> Function(C connection) getItems,
    required String? Function(C connection) getNextToken,
  }) async {
    final json = await _query(document, variables);
    if (json == null) {
      return const TaskApiPage(items: [], nextToken: null);
    }
    final result = fromJson(json);
    final connection = getConnection(result);
    if (connection == null) {
      return const TaskApiPage(items: [], nextToken: null);
    }
    return _mapPageObjects(
      getItems(connection),
      getNextToken(connection),
    );
  }

  TaskApiPage _mapPageObjects(
    List<Object?> items,
    String? nextToken,
  ) {
    final tasks = items
        .whereType<Object>()
        .map(_mapItem)
        .whereType<Task>()
        .toList(growable: false);
    return TaskApiPage(items: tasks, nextToken: nextToken);
  }

  Task? _mapItem(Object task) {
    return switch (task) {
      Query$TasksByOwnerCreatedAt$tasksByOwnerCreatedAt$items t => _mapTasks(
        id: t.id,
        owner: t.owner,
        title: t.title,
        description: t.description,
        datetime: t.datetime,
        isCompleted: t.isCompleted,
        createdAt: t.createdAt,
        updatedAt: t.updatedAt,
      ),
      Query$TasksByOwnerUpdatedAt$tasksByOwnerUpdatedAt$items t => _mapTasks(
        id: t.id,
        owner: t.owner,
        title: t.title,
        description: t.description,
        datetime: t.datetime,
        isCompleted: t.isCompleted,
        createdAt: t.createdAt,
        updatedAt: t.updatedAt,
      ),
      Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items t => _mapTasks(
        id: t.id,
        owner: t.owner,
        title: t.title,
        description: t.description,
        datetime: t.datetime,
        isCompleted: t.isCompleted,
        createdAt: t.createdAt,
        updatedAt: t.updatedAt,
      ),
      Query$TasksByOwnerTitle$tasksByOwnerTitle$items t => _mapTasks(
        id: t.id,
        owner: t.owner,
        title: t.title,
        description: t.description,
        datetime: t.datetime,
        isCompleted: t.isCompleted,
        createdAt: t.createdAt,
        updatedAt: t.updatedAt,
      ),
      _ => null,
    };
  }

  Task? _mapTasks({
    required String id,
    required String? owner,
    required String title,
    required String? description,
    required DateTime? datetime,
    required bool? isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) {
    if (owner == null) {
      return null;
    }
    return Task(
      id: TaskId(id),
      owner: UserId(owner),
      title: title,
      description: description,
      datetime: datetime,
      isCompleted: isCompleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

const String _createTaskWithLimitMutation = r'''
mutation CreateTaskWithLimit(
  $id: ID!
  $title: String!
  $description: String
  $datetime: AWSDateTime
  $createdAt: AWSDateTime!
  $updatedAt: AWSDateTime!
  $isCompleted: Boolean
) {
  createTaskWithLimit(
    id: $id
    title: $title
    description: $description
    datetime: $datetime
    createdAt: $createdAt
    updatedAt: $updatedAt
    isCompleted: $isCompleted
  ) {
    id
  }
}
''';

const String _deleteTaskWithLimitMutation = r'''
mutation DeleteTaskWithLimit($id: ID!) {
  deleteTaskWithLimit(id: $id) {
    id
  }
}
''';
