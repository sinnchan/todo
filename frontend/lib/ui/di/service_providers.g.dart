// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sortService)
const sortServiceProvider = SortServiceProvider._();

final class SortServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<TaskSortService>,
          TaskSortService,
          FutureOr<TaskSortService>
        >
    with $FutureModifier<TaskSortService>, $FutureProvider<TaskSortService> {
  const SortServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sortServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sortServiceHash();

  @$internal
  @override
  $FutureProviderElement<TaskSortService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TaskSortService> create(Ref ref) {
    return sortService(ref);
  }
}

String _$sortServiceHash() => r'eebc9d46b8804644c3a83ad039bbec837a0080d3';
