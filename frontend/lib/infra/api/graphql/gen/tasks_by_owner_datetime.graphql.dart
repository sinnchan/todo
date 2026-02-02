// ignore_for_file: type=lint
import 'package:gql/ast.dart';
import 'package:todo/infra/api/graphql/scalars.dart';
import 'schema.graphql.dart';

class Variables$Query$TasksByOwnerDatetime {
  factory Variables$Query$TasksByOwnerDatetime({
    required String owner,
    Enum$ModelSortDirection? sortDirection,
    int? limit,
    String? nextToken,
  }) => Variables$Query$TasksByOwnerDatetime._({
    r'owner': owner,
    if (sortDirection != null) r'sortDirection': sortDirection,
    if (limit != null) r'limit': limit,
    if (nextToken != null) r'nextToken': nextToken,
  });

  Variables$Query$TasksByOwnerDatetime._(this._$data);

  factory Variables$Query$TasksByOwnerDatetime.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$owner = data['owner'];
    result$data['owner'] = (l$owner as String);
    if (data.containsKey('sortDirection')) {
      final l$sortDirection = data['sortDirection'];
      result$data['sortDirection'] = l$sortDirection == null
          ? null
          : fromJson$Enum$ModelSortDirection((l$sortDirection as String));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('nextToken')) {
      final l$nextToken = data['nextToken'];
      result$data['nextToken'] = (l$nextToken as String?);
    }
    return Variables$Query$TasksByOwnerDatetime._(result$data);
  }

  Map<String, dynamic> _$data;

  String get owner => (_$data['owner'] as String);

  Enum$ModelSortDirection? get sortDirection =>
      (_$data['sortDirection'] as Enum$ModelSortDirection?);

  int? get limit => (_$data['limit'] as int?);

  String? get nextToken => (_$data['nextToken'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$owner = owner;
    result$data['owner'] = l$owner;
    if (_$data.containsKey('sortDirection')) {
      final l$sortDirection = sortDirection;
      result$data['sortDirection'] = l$sortDirection == null
          ? null
          : toJson$Enum$ModelSortDirection(l$sortDirection);
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('nextToken')) {
      final l$nextToken = nextToken;
      result$data['nextToken'] = l$nextToken;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TasksByOwnerDatetime<
    Variables$Query$TasksByOwnerDatetime
  >
  get copyWith => CopyWith$Variables$Query$TasksByOwnerDatetime(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TasksByOwnerDatetime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$sortDirection = sortDirection;
    final lOther$sortDirection = other.sortDirection;
    if (_$data.containsKey('sortDirection') !=
        other._$data.containsKey('sortDirection')) {
      return false;
    }
    if (l$sortDirection != lOther$sortDirection) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$nextToken = nextToken;
    final lOther$nextToken = other.nextToken;
    if (_$data.containsKey('nextToken') !=
        other._$data.containsKey('nextToken')) {
      return false;
    }
    if (l$nextToken != lOther$nextToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$sortDirection = sortDirection;
    final l$limit = limit;
    final l$nextToken = nextToken;
    return Object.hashAll([
      l$owner,
      _$data.containsKey('sortDirection') ? l$sortDirection : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('nextToken') ? l$nextToken : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TasksByOwnerDatetime<TRes> {
  factory CopyWith$Variables$Query$TasksByOwnerDatetime(
    Variables$Query$TasksByOwnerDatetime instance,
    TRes Function(Variables$Query$TasksByOwnerDatetime) then,
  ) = _CopyWithImpl$Variables$Query$TasksByOwnerDatetime;

  factory CopyWith$Variables$Query$TasksByOwnerDatetime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TasksByOwnerDatetime;

  TRes call({
    String? owner,
    Enum$ModelSortDirection? sortDirection,
    int? limit,
    String? nextToken,
  });
}

class _CopyWithImpl$Variables$Query$TasksByOwnerDatetime<TRes>
    implements CopyWith$Variables$Query$TasksByOwnerDatetime<TRes> {
  _CopyWithImpl$Variables$Query$TasksByOwnerDatetime(
    this._instance,
    this._then,
  );

  final Variables$Query$TasksByOwnerDatetime _instance;

  final TRes Function(Variables$Query$TasksByOwnerDatetime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? sortDirection = _undefined,
    Object? limit = _undefined,
    Object? nextToken = _undefined,
  }) => _then(
    Variables$Query$TasksByOwnerDatetime._({
      ..._instance._$data,
      if (owner != _undefined && owner != null) 'owner': (owner as String),
      if (sortDirection != _undefined)
        'sortDirection': (sortDirection as Enum$ModelSortDirection?),
      if (limit != _undefined) 'limit': (limit as int?),
      if (nextToken != _undefined) 'nextToken': (nextToken as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TasksByOwnerDatetime<TRes>
    implements CopyWith$Variables$Query$TasksByOwnerDatetime<TRes> {
  _CopyWithStubImpl$Variables$Query$TasksByOwnerDatetime(this._res);

  TRes _res;

  call({
    String? owner,
    Enum$ModelSortDirection? sortDirection,
    int? limit,
    String? nextToken,
  }) => _res;
}

class Query$TasksByOwnerDatetime {
  Query$TasksByOwnerDatetime({
    this.tasksByOwnerDatetime,
    this.$__typename = 'Query',
  });

  factory Query$TasksByOwnerDatetime.fromJson(Map<String, dynamic> json) {
    final l$tasksByOwnerDatetime = json['tasksByOwnerDatetime'];
    final l$$__typename = json['__typename'];
    return Query$TasksByOwnerDatetime(
      tasksByOwnerDatetime: l$tasksByOwnerDatetime == null
          ? null
          : Query$TasksByOwnerDatetime$tasksByOwnerDatetime.fromJson(
              (l$tasksByOwnerDatetime as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TasksByOwnerDatetime$tasksByOwnerDatetime? tasksByOwnerDatetime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tasksByOwnerDatetime = tasksByOwnerDatetime;
    _resultData['tasksByOwnerDatetime'] = l$tasksByOwnerDatetime?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tasksByOwnerDatetime = tasksByOwnerDatetime;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tasksByOwnerDatetime, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TasksByOwnerDatetime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tasksByOwnerDatetime = tasksByOwnerDatetime;
    final lOther$tasksByOwnerDatetime = other.tasksByOwnerDatetime;
    if (l$tasksByOwnerDatetime != lOther$tasksByOwnerDatetime) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TasksByOwnerDatetime
    on Query$TasksByOwnerDatetime {
  CopyWith$Query$TasksByOwnerDatetime<Query$TasksByOwnerDatetime>
  get copyWith => CopyWith$Query$TasksByOwnerDatetime(this, (i) => i);
}

abstract class CopyWith$Query$TasksByOwnerDatetime<TRes> {
  factory CopyWith$Query$TasksByOwnerDatetime(
    Query$TasksByOwnerDatetime instance,
    TRes Function(Query$TasksByOwnerDatetime) then,
  ) = _CopyWithImpl$Query$TasksByOwnerDatetime;

  factory CopyWith$Query$TasksByOwnerDatetime.stub(TRes res) =
      _CopyWithStubImpl$Query$TasksByOwnerDatetime;

  TRes call({
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime? tasksByOwnerDatetime,
    String? $__typename,
  });
  CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes>
  get tasksByOwnerDatetime;
}

class _CopyWithImpl$Query$TasksByOwnerDatetime<TRes>
    implements CopyWith$Query$TasksByOwnerDatetime<TRes> {
  _CopyWithImpl$Query$TasksByOwnerDatetime(this._instance, this._then);

  final Query$TasksByOwnerDatetime _instance;

  final TRes Function(Query$TasksByOwnerDatetime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tasksByOwnerDatetime = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TasksByOwnerDatetime(
      tasksByOwnerDatetime: tasksByOwnerDatetime == _undefined
          ? _instance.tasksByOwnerDatetime
          : (tasksByOwnerDatetime
                as Query$TasksByOwnerDatetime$tasksByOwnerDatetime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes>
  get tasksByOwnerDatetime {
    final local$tasksByOwnerDatetime = _instance.tasksByOwnerDatetime;
    return local$tasksByOwnerDatetime == null
        ? CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime.stub(
            _then(_instance),
          )
        : CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime(
            local$tasksByOwnerDatetime,
            (e) => call(tasksByOwnerDatetime: e),
          );
  }
}

class _CopyWithStubImpl$Query$TasksByOwnerDatetime<TRes>
    implements CopyWith$Query$TasksByOwnerDatetime<TRes> {
  _CopyWithStubImpl$Query$TasksByOwnerDatetime(this._res);

  TRes _res;

  call({
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime? tasksByOwnerDatetime,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes>
  get tasksByOwnerDatetime =>
      CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime.stub(_res);
}

const documentNodeQueryTasksByOwnerDatetime = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TasksByOwnerDatetime'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'owner')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sortDirection')),
          type: NamedTypeNode(
            name: NameNode(value: 'ModelSortDirection'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nextToken')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tasksByOwnerDatetime'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'owner'),
                value: VariableNode(name: NameNode(value: 'owner')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sortDirection'),
                value: VariableNode(name: NameNode(value: 'sortDirection')),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'nextToken'),
                value: VariableNode(name: NameNode(value: 'nextToken')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'owner'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'datetime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isCompleted'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'nextToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$TasksByOwnerDatetime$tasksByOwnerDatetime {
  Query$TasksByOwnerDatetime$tasksByOwnerDatetime({
    required this.items,
    this.nextToken,
    this.$__typename = 'ModelTaskConnection',
  });

  factory Query$TasksByOwnerDatetime$tasksByOwnerDatetime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$nextToken = json['nextToken'];
    final l$$__typename = json['__typename'];
    return Query$TasksByOwnerDatetime$tasksByOwnerDatetime(
      items: (l$items as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      nextToken: (l$nextToken as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?> items;

  final String? nextToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e?.toJson()).toList();
    final l$nextToken = nextToken;
    _resultData['nextToken'] = l$nextToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$nextToken = nextToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$nextToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TasksByOwnerDatetime$tasksByOwnerDatetime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$nextToken = nextToken;
    final lOther$nextToken = other.nextToken;
    if (l$nextToken != lOther$nextToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TasksByOwnerDatetime$tasksByOwnerDatetime
    on Query$TasksByOwnerDatetime$tasksByOwnerDatetime {
  CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime
  >
  get copyWith =>
      CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime(this, (i) => i);
}

abstract class CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes> {
  factory CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime(
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime instance,
    TRes Function(Query$TasksByOwnerDatetime$tasksByOwnerDatetime) then,
  ) = _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime;

  factory CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime;

  TRes call({
    List<Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?>? items,
    String? nextToken,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?> Function(
      Iterable<
        CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<
          Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes>
    implements CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes> {
  _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime(
    this._instance,
    this._then,
  );

  final Query$TasksByOwnerDatetime$tasksByOwnerDatetime _instance;

  final TRes Function(Query$TasksByOwnerDatetime$tasksByOwnerDatetime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? nextToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime(
      items: items == _undefined || items == null
          ? _instance.items
          : (items
                as List<
                  Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?
                >),
      nextToken: nextToken == _undefined
          ? _instance.nextToken
          : (nextToken as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?> Function(
      Iterable<
        CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<
          Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items
        >?
      >,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes>
    implements CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime<TRes> {
  _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime(this._res);

  TRes _res;

  call({
    List<Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items?>? items,
    String? nextToken,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items {
  Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items({
    required this.id,
    this.owner,
    required this.title,
    this.description,
    this.order,
    required this.datetime,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'Task',
  });

  factory Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$owner = json['owner'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$datetime = json['datetime'];
    final l$isCompleted = json['isCompleted'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
      id: (l$id as String),
      owner: (l$owner as String?),
      title: (l$title as String),
      description: (l$description as String?),
      order: (l$order as int?),
      datetime: fromGraphQLAWSDateTime(l$datetime),
      isCompleted: (l$isCompleted as bool),
      createdAt: fromGraphQLAWSDateTime(l$createdAt),
      updatedAt: fromGraphQLAWSDateTime(l$updatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? owner;

  final String title;

  final String? description;

  final int? order;

  final DateTime datetime;

  final bool isCompleted;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$owner = owner;
    _resultData['owner'] = l$owner;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$datetime = datetime;
    _resultData['datetime'] = toGraphQLAWSDateTime(l$datetime);
    final l$isCompleted = isCompleted;
    _resultData['isCompleted'] = l$isCompleted;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = toGraphQLAWSDateTime(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = toGraphQLAWSDateTime(l$updatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$owner = owner;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$isCompleted = isCompleted;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$owner,
      l$title,
      l$description,
      l$order,
      l$datetime,
      l$isCompleted,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items
    on Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items {
  CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items
  >
  get copyWith =>
      CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<
  TRes
> {
  factory CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items instance,
    TRes Function(Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items) then,
  ) = _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items;

  factory CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items;

  TRes call({
    String? id,
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    bool? isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<TRes>
    implements
        CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<TRes> {
  _CopyWithImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
    this._instance,
    this._then,
  );

  final Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items _instance;

  final TRes Function(Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? owner = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? isCompleted = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      owner: owner == _undefined ? _instance.owner : (owner as String?),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      order: order == _undefined ? _instance.order : (order as int?),
      datetime: datetime == _undefined || datetime == null
          ? _instance.datetime
          : (datetime as DateTime),
      isCompleted: isCompleted == _undefined || isCompleted == null
          ? _instance.isCompleted
          : (isCompleted as bool),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<
  TRes
>
    implements
        CopyWith$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items<TRes> {
  _CopyWithStubImpl$Query$TasksByOwnerDatetime$tasksByOwnerDatetime$items(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    bool? isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;
}
