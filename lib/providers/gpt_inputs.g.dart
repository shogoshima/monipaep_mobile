// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_inputs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gptInputsHash() => r'37dd55642533dd3882a0b31f10ed29fba6f1e82f';

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

abstract class _$GptInputs
    extends BuildlessAutoDisposeNotifier<List<GptProtocolInput>> {
  late final String symptomOccurrenceId;
  late final List<Analysis> analyses;

  List<GptProtocolInput> build(
    String symptomOccurrenceId,
    List<Analysis> analyses,
  );
}

/// See also [GptInputs].
@ProviderFor(GptInputs)
const gptInputsProvider = GptInputsFamily();

/// See also [GptInputs].
class GptInputsFamily extends Family<List<GptProtocolInput>> {
  /// See also [GptInputs].
  const GptInputsFamily();

  /// See also [GptInputs].
  GptInputsProvider call(String symptomOccurrenceId, List<Analysis> analyses) {
    return GptInputsProvider(symptomOccurrenceId, analyses);
  }

  @override
  GptInputsProvider getProviderOverride(covariant GptInputsProvider provider) {
    return call(provider.symptomOccurrenceId, provider.analyses);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gptInputsProvider';
}

/// See also [GptInputs].
class GptInputsProvider
    extends AutoDisposeNotifierProviderImpl<GptInputs, List<GptProtocolInput>> {
  /// See also [GptInputs].
  GptInputsProvider(String symptomOccurrenceId, List<Analysis> analyses)
    : this._internal(
        () =>
            GptInputs()
              ..symptomOccurrenceId = symptomOccurrenceId
              ..analyses = analyses,
        from: gptInputsProvider,
        name: r'gptInputsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$gptInputsHash,
        dependencies: GptInputsFamily._dependencies,
        allTransitiveDependencies: GptInputsFamily._allTransitiveDependencies,
        symptomOccurrenceId: symptomOccurrenceId,
        analyses: analyses,
      );

  GptInputsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symptomOccurrenceId,
    required this.analyses,
  }) : super.internal();

  final String symptomOccurrenceId;
  final List<Analysis> analyses;

  @override
  List<GptProtocolInput> runNotifierBuild(covariant GptInputs notifier) {
    return notifier.build(symptomOccurrenceId, analyses);
  }

  @override
  Override overrideWith(GptInputs Function() create) {
    return ProviderOverride(
      origin: this,
      override: GptInputsProvider._internal(
        () =>
            create()
              ..symptomOccurrenceId = symptomOccurrenceId
              ..analyses = analyses,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symptomOccurrenceId: symptomOccurrenceId,
        analyses: analyses,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GptInputs, List<GptProtocolInput>>
  createElement() {
    return _GptInputsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GptInputsProvider &&
        other.symptomOccurrenceId == symptomOccurrenceId &&
        other.analyses == analyses;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symptomOccurrenceId.hashCode);
    hash = _SystemHash.combine(hash, analyses.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GptInputsRef on AutoDisposeNotifierProviderRef<List<GptProtocolInput>> {
  /// The parameter `symptomOccurrenceId` of this provider.
  String get symptomOccurrenceId;

  /// The parameter `analyses` of this provider.
  List<Analysis> get analyses;
}

class _GptInputsProviderElement
    extends
        AutoDisposeNotifierProviderElement<GptInputs, List<GptProtocolInput>>
    with GptInputsRef {
  _GptInputsProviderElement(super.provider);

  @override
  String get symptomOccurrenceId =>
      (origin as GptInputsProvider).symptomOccurrenceId;
  @override
  List<Analysis> get analyses => (origin as GptInputsProvider).analyses;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
