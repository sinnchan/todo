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
          AsyncValue<TaskService>,
          TaskService,
          FutureOr<TaskService>
        >
    with $FutureModifier<TaskService>, $FutureProvider<TaskService> {
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
  $FutureProviderElement<TaskService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TaskService> create(Ref ref) {
    return sortService(ref);
  }
}

String _$sortServiceHash() => r'6deaeac3f0048ae0b37f2585f52da2bfcddd08ef';
