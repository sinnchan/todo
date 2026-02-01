// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(box)
const boxProvider = BoxFamily._();

final class BoxProvider<T>
    extends $FunctionalProvider<AsyncValue<Box<T>>, Box<T>, FutureOr<Box<T>>>
    with $FutureModifier<Box<T>>, $FutureProvider<Box<T>> {
  const BoxProvider._({
    required BoxFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'boxProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boxHash();

  @override
  String toString() {
    return r'boxProvider'
        '<${T}>'
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Box<T>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Box<T>> create(Ref ref) {
    final argument = this.argument as String;
    return box<T>(ref, argument);
  }

  $R _captureGenerics<$R>($R Function<T>() cb) {
    return cb<T>();
  }

  @override
  bool operator ==(Object other) {
    return other is BoxProvider &&
        other.runtimeType == runtimeType &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, argument);
  }
}

String _$boxHash() => r'1440f0344e6d63333f79c68e6c4fccb9cd6c3f47';

final class BoxFamily extends $Family {
  const BoxFamily._()
    : super(
        retry: null,
        name: r'boxProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoxProvider<T> call<T>(String name) =>
      BoxProvider<T>._(argument: name, from: this);

  @override
  String toString() => r'boxProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    FutureOr<Box<T>> Function<T>(Ref ref, String args) create,
  ) => $FamilyOverride(
    from: this,
    createElement: (pointer) {
      final provider = pointer.origin as BoxProvider;
      return provider._captureGenerics(<T>() {
        provider as BoxProvider<T>;
        final argument = provider.argument as String;
        return provider
            .$view(create: (ref) => create(ref, argument))
            .$createElement(pointer);
      });
    },
  );
}

@ProviderFor(hiveInit)
const hiveInitProvider = HiveInitProvider._();

final class HiveInitProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const HiveInitProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hiveInitProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hiveInitHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return hiveInit(ref);
  }
}

String _$hiveInitHash() => r'9972a86109d8c564b5e0652e7cc5b60b90f6ef16';
