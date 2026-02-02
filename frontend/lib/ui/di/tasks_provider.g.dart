// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(taskService)
const taskServiceProvider = TaskServiceProvider._();

final class TaskServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<TaskService>,
          TaskService,
          FutureOr<TaskService>
        >
    with $FutureModifier<TaskService>, $FutureProvider<TaskService> {
  const TaskServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskServiceHash();

  @$internal
  @override
  $FutureProviderElement<TaskService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TaskService> create(Ref ref) {
    return taskService(ref);
  }
}

String _$taskServiceHash() => r'da553e5852b033b1830b088e581792eda0c77a6b';

@ProviderFor(taskRepository)
const taskRepositoryProvider = TaskRepositoryProvider._();

final class TaskRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<TaskRepository>,
          TaskRepository,
          FutureOr<TaskRepository>
        >
    with $FutureModifier<TaskRepository>, $FutureProvider<TaskRepository> {
  const TaskRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<TaskRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TaskRepository> create(Ref ref) {
    return taskRepository(ref);
  }
}

String _$taskRepositoryHash() => r'2726186cb88b87e8d4bbc47a0bb163554ef193f3';

@ProviderFor(taskApi)
const taskApiProvider = TaskApiProvider._();

final class TaskApiProvider
    extends $FunctionalProvider<TaskApi, TaskApi, TaskApi>
    with $Provider<TaskApi> {
  const TaskApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskApiHash();

  @$internal
  @override
  $ProviderElement<TaskApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TaskApi create(Ref ref) {
    return taskApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskApi>(value),
    );
  }
}

String _$taskApiHash() => r'cef7cf0d46e0cc43510cc73e526576e2f5bc6b37';

@ProviderFor(tasksDao)
const tasksDaoProvider = TasksDaoProvider._();

final class TasksDaoProvider
    extends
        $FunctionalProvider<AsyncValue<TasksDao>, TasksDao, FutureOr<TasksDao>>
    with $FutureModifier<TasksDao>, $FutureProvider<TasksDao> {
  const TasksDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksDaoHash();

  @$internal
  @override
  $FutureProviderElement<TasksDao> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<TasksDao> create(Ref ref) {
    return tasksDao(ref);
  }
}

String _$tasksDaoHash() => r'da66570ce14247c562d1ed23ce7a9f530b694421';

@ProviderFor(tasks)
const tasksProvider = TasksFamily._();

final class TasksProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TaskId>>,
          List<TaskId>,
          Stream<List<TaskId>>
        >
    with $FutureModifier<List<TaskId>>, $StreamProvider<List<TaskId>> {
  const TasksProvider._({
    required TasksFamily super.from,
    required UserId super.argument,
  }) : super(
         retry: null,
         name: r'tasksProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tasksHash();

  @override
  String toString() {
    return r'tasksProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<TaskId>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<TaskId>> create(Ref ref) {
    final argument = this.argument as UserId;
    return tasks(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TasksProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tasksHash() => r'63625a5c23844a013b93bcf01672210b6696951e';

final class TasksFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<TaskId>>, UserId> {
  const TasksFamily._()
    : super(
        retry: null,
        name: r'tasksProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TasksProvider call(UserId id) => TasksProvider._(argument: id, from: this);

  @override
  String toString() => r'tasksProvider';
}

@ProviderFor(task)
const taskProvider = TaskFamily._();

final class TaskProvider
    extends $FunctionalProvider<AsyncValue<Task>, Task, Stream<Task>>
    with $FutureModifier<Task>, $StreamProvider<Task> {
  const TaskProvider._({
    required TaskFamily super.from,
    required TaskId super.argument,
  }) : super(
         retry: null,
         name: r'taskProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$taskHash();

  @override
  String toString() {
    return r'taskProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Task> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Task> create(Ref ref) {
    final argument = this.argument as TaskId;
    return task(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$taskHash() => r'd55a31c115c959ce2fedca1d310005c9270880fc';

final class TaskFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Task>, TaskId> {
  const TaskFamily._()
    : super(
        retry: null,
        name: r'taskProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TaskProvider call(TaskId id) => TaskProvider._(argument: id, from: this);

  @override
  String toString() => r'taskProvider';
}
