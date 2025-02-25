// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorsHash() => r'1b16eeacd4bf4065b67c720b85cf8578950f07fb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [colors].
@ProviderFor(colors)
const colorsProvider = ColorsFamily();

/// See also [colors].
class ColorsFamily extends Family<AsyncValue<List<ColorSource>>> {
  /// See also [colors].
  const ColorsFamily();

  /// See also [colors].
  ColorsProvider call({required int page}) {
    return ColorsProvider(page: page);
  }

  @override
  ColorsProvider getProviderOverride(covariant ColorsProvider provider) {
    return call(page: provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'colorsProvider';
}

/// See also [colors].
class ColorsProvider extends AutoDisposeFutureProvider<List<ColorSource>> {
  /// See also [colors].
  ColorsProvider({required int page})
    : this._internal(
        (ref) => colors(ref as ColorsRef, page: page),
        from: colorsProvider,
        name: r'colorsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$colorsHash,
        dependencies: ColorsFamily._dependencies,
        allTransitiveDependencies: ColorsFamily._allTransitiveDependencies,
        page: page,
      );

  ColorsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<ColorSource>> Function(ColorsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColorsProvider._internal(
        (ref) => create(ref as ColorsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ColorSource>> createElement() {
    return _ColorsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ColorsRef on AutoDisposeFutureProviderRef<List<ColorSource>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _ColorsProviderElement
    extends AutoDisposeFutureProviderElement<List<ColorSource>>
    with ColorsRef {
  _ColorsProviderElement(super.provider);

  @override
  int get page => (origin as ColorsProvider).page;
}

String _$usersHash() => r'12bc45b81e16fe31d5022904ce89f663979ab980';

/// See also [users].
@ProviderFor(users)
const usersProvider = UsersFamily();

/// See also [users].
class UsersFamily extends Family<AsyncValue<List<User>>> {
  /// See also [users].
  const UsersFamily();

  /// See also [users].
  UsersProvider call({required int page}) {
    return UsersProvider(page: page);
  }

  @override
  UsersProvider getProviderOverride(covariant UsersProvider provider) {
    return call(page: provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'usersProvider';
}

/// See also [users].
class UsersProvider extends AutoDisposeFutureProvider<List<User>> {
  /// See also [users].
  UsersProvider({required int page})
    : this._internal(
        (ref) => users(ref as UsersRef, page: page),
        from: usersProvider,
        name: r'usersProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$usersHash,
        dependencies: UsersFamily._dependencies,
        allTransitiveDependencies: UsersFamily._allTransitiveDependencies,
        page: page,
      );

  UsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<User>> Function(UsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UsersProvider._internal(
        (ref) => create(ref as UsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<User>> createElement() {
    return _UsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UsersRef on AutoDisposeFutureProviderRef<List<User>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _UsersProviderElement extends AutoDisposeFutureProviderElement<List<User>>
    with UsersRef {
  _UsersProviderElement(super.provider);

  @override
  int get page => (origin as UsersProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
