import 'package:monipaep_mobile/models/chat_message.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

// Necessary for code-generation to work
part 'message.g.dart';

@riverpod
class Message extends _$Message {
  late String? _symptomOccurrenceId;

  @override
  Future<List<ChatMessage>> build(String? symptomOccurrenceId) async {
    _symptomOccurrenceId = symptomOccurrenceId; // Store it internally

    if (_symptomOccurrenceId == null) {
      return [];
    }

    final apiClient = ref.watch(apiClientProvider);
    final json = await apiClient.get('${ApiRoutes.chat}/$symptomOccurrenceId');

    List<ChatMessage> chatMessages = [];
    if (json['messages'] == null) {
      return chatMessages;
    }

    for (var chat in json['messages']) {
      chatMessages.add(ChatMessage.fromJson(chat));
    }

    return chatMessages;
  }

  void addMessage(String message) {
    ChatMessage chatMessage = ChatMessage(
      id: Uuid().v4(),
      symptomOccurrenceId: _symptomOccurrenceId,
      role: 'user',
      message: message,
      createdAt: DateTime.now(),
    );
    state = AsyncData([chatMessage, ...state.value ?? []]);
  }

  Future<void> sendMessage(String message) async {
    final apiClient = ref.read(apiClientProvider);

    final json = await apiClient.post(ApiRoutes.chat, {
      'text': message,
      'symptomOccurrenceId': _symptomOccurrenceId,
    });

    if (json['chatMessage'] == null) {
      throw Exception('Error sending message');
    }

    final chatMessage = ChatMessage.fromJson(json['chatMessage']);

    _symptomOccurrenceId = chatMessage.symptomOccurrenceId;

    state = AsyncData([chatMessage, ...state.value ?? []]);

    ref.invalidate(occurrenceProvider);
  }
}
