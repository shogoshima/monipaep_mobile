// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_protocol.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gptProtocolHash() => r'623e30ff28196a551603a089a6db0adb37ffd23b';

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

abstract class _$GptProtocol extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String symptomOccurrenceId;
  late final List<GptProtocolInput> data;

  FutureOr<String> build(
    String symptomOccurrenceId,
    List<GptProtocolInput> data,
  );
}

/// See also [GptProtocol].
@ProviderFor(GptProtocol)
const gptProtocolProvider = GptProtocolFamily();

/// See also [GptProtocol].
class GptProtocolFamily extends Family<AsyncValue<String>> {
  /// See also [GptProtocol].
  const GptProtocolFamily();

  /// See also [GptProtocol].
  GptProtocolProvider call(
    String symptomOccurrenceId,
    List<GptProtocolInput> data,
  ) {
    return GptProtocolProvider(symptomOccurrenceId, data);
  }

  @override
  GptProtocolProvider getProviderOverride(
    covariant GptProtocolProvider provider,
  ) {
    return call(provider.symptomOccurrenceId, provider.data);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gptProtocolProvider';
}

/// See also [GptProtocol].
class GptProtocolProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GptProtocol, String> {
  /// See also [GptProtocol].
  GptProtocolProvider(String symptomOccurrenceId, List<GptProtocolInput> data)
    : this._internal(
        () =>
            GptProtocol()
              ..symptomOccurrenceId = symptomOccurrenceId
              ..data = data,
        from: gptProtocolProvider,
        name: r'gptProtocolProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$gptProtocolHash,
        dependencies: GptProtocolFamily._dependencies,
        allTransitiveDependencies: GptProtocolFamily._allTransitiveDependencies,
        symptomOccurrenceId: symptomOccurrenceId,
        data: data,
      );

  GptProtocolProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symptomOccurrenceId,
    required this.data,
  }) : super.internal();

  final String symptomOccurrenceId;
  final List<GptProtocolInput> data;

  @override
  FutureOr<String> runNotifierBuild(covariant GptProtocol notifier) {
    return notifier.build(symptomOccurrenceId, data);
  }

  @override
  Override overrideWith(GptProtocol Function() create) {
    return ProviderOverride(
      origin: this,
      override: GptProtocolProvider._internal(
        () =>
            create()
              ..symptomOccurrenceId = symptomOccurrenceId
              ..data = data,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symptomOccurrenceId: symptomOccurrenceId,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GptProtocol, String> createElement() {
    return _GptProtocolProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GptProtocolProvider &&
        other.symptomOccurrenceId == symptomOccurrenceId &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symptomOccurrenceId.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GptProtocolRef on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `symptomOccurrenceId` of this provider.
  String get symptomOccurrenceId;

  /// The parameter `data` of this provider.
  List<GptProtocolInput> get data;
}

class _GptProtocolProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GptProtocol, String>
    with GptProtocolRef {
  _GptProtocolProviderElement(super.provider);

  @override
  String get symptomOccurrenceId =>
      (origin as GptProtocolProvider).symptomOccurrenceId;
  @override
  List<GptProtocolInput> get data => (origin as GptProtocolProvider).data;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
