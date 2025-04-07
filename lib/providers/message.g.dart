// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageHash() => r'1128cb5a0c7918eddcda874f716aca823cd4f15c';

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

abstract class _$Message
    extends BuildlessAutoDisposeAsyncNotifier<List<ChatMessage>> {
  late final String? symptomOccurrenceId;

  FutureOr<List<ChatMessage>> build(String? symptomOccurrenceId);
}

/// See also [Message].
@ProviderFor(Message)
const messageProvider = MessageFamily();

/// See also [Message].
class MessageFamily extends Family<AsyncValue<List<ChatMessage>>> {
  /// See also [Message].
  const MessageFamily();

  /// See also [Message].
  MessageProvider call(String? symptomOccurrenceId) {
    return MessageProvider(symptomOccurrenceId);
  }

  @override
  MessageProvider getProviderOverride(covariant MessageProvider provider) {
    return call(provider.symptomOccurrenceId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'messageProvider';
}

/// See also [Message].
class MessageProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Message, List<ChatMessage>> {
  /// See also [Message].
  MessageProvider(String? symptomOccurrenceId)
    : this._internal(
        () => Message()..symptomOccurrenceId = symptomOccurrenceId,
        from: messageProvider,
        name: r'messageProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$messageHash,
        dependencies: MessageFamily._dependencies,
        allTransitiveDependencies: MessageFamily._allTransitiveDependencies,
        symptomOccurrenceId: symptomOccurrenceId,
      );

  MessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symptomOccurrenceId,
  }) : super.internal();

  final String? symptomOccurrenceId;

  @override
  FutureOr<List<ChatMessage>> runNotifierBuild(covariant Message notifier) {
    return notifier.build(symptomOccurrenceId);
  }

  @override
  Override overrideWith(Message Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageProvider._internal(
        () => create()..symptomOccurrenceId = symptomOccurrenceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symptomOccurrenceId: symptomOccurrenceId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Message, List<ChatMessage>>
  createElement() {
    return _MessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageProvider &&
        other.symptomOccurrenceId == symptomOccurrenceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symptomOccurrenceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MessageRef on AutoDisposeAsyncNotifierProviderRef<List<ChatMessage>> {
  /// The parameter `symptomOccurrenceId` of this provider.
  String? get symptomOccurrenceId;
}

class _MessageProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Message, List<ChatMessage>>
    with MessageRef {
  _MessageProviderElement(super.provider);

  @override
  String? get symptomOccurrenceId =>
      (origin as MessageProvider).symptomOccurrenceId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
