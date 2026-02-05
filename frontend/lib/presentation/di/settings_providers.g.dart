// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userSettingsRepository)
const userSettingsRepositoryProvider = UserSettingsRepositoryProvider._();

final class UserSettingsRepositoryProvider
    extends
        $FunctionalProvider<
          hooks.AsyncValue<UserSettingsRepository>,
          UserSettingsRepository,
          FutureOr<UserSettingsRepository>
        >
    with
        $FutureModifier<UserSettingsRepository>,
        $FutureProvider<UserSettingsRepository> {
  const UserSettingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userSettingsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userSettingsRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<UserSettingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserSettingsRepository> create(Ref ref) {
    return userSettingsRepository(ref);
  }
}

String _$userSettingsRepositoryHash() =>
    r'317299bcd904299f50e264605f164723849ec8b1';

@ProviderFor(userSettingsDao)
const userSettingsDaoProvider = UserSettingsDaoProvider._();

final class UserSettingsDaoProvider
    extends
        $FunctionalProvider<
          hooks.AsyncValue<UserSettingsDao>,
          UserSettingsDao,
          FutureOr<UserSettingsDao>
        >
    with $FutureModifier<UserSettingsDao>, $FutureProvider<UserSettingsDao> {
  const UserSettingsDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userSettingsDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userSettingsDaoHash();

  @$internal
  @override
  $FutureProviderElement<UserSettingsDao> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserSettingsDao> create(Ref ref) {
    return userSettingsDao(ref);
  }
}

String _$userSettingsDaoHash() => r'3fa635ce2eb7b2600d44cee8b6bcf9b8af87281c';

@ProviderFor(userSettings)
const userSettingsProvider = UserSettingsFamily._();

final class UserSettingsProvider
    extends
        $FunctionalProvider<
          hooks.AsyncValue<UserSettings>,
          UserSettings,
          Stream<UserSettings>
        >
    with $FutureModifier<UserSettings>, $StreamProvider<UserSettings> {
  const UserSettingsProvider._({
    required UserSettingsFamily super.from,
    required UserId super.argument,
  }) : super(
         retry: null,
         name: r'userSettingsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userSettingsHash();

  @override
  String toString() {
    return r'userSettingsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<UserSettings> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<UserSettings> create(Ref ref) {
    final argument = this.argument as UserId;
    return userSettings(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserSettingsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userSettingsHash() => r'ab13eb447e5a92507ab81447622b9e871121ef48';

final class UserSettingsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<UserSettings>, UserId> {
  const UserSettingsFamily._()
    : super(
        retry: null,
        name: r'userSettingsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserSettingsProvider call(UserId id) =>
      UserSettingsProvider._(argument: id, from: this);

  @override
  String toString() => r'userSettingsProvider';
}
