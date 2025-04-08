import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/chat_message.dart';
import 'package:monipaep_mobile/providers/message.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final String symptomOccurrenceId;

  const ChatScreen({super.key, required this.symptomOccurrenceId});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final _user = const types.User(id: 'user');

  @override
  void initState() {
    super.initState();
  }

  types.TextMessage _formatMessage(ChatMessage chatMessage) {
    return types.TextMessage(
      author: types.User(id: chatMessage.role, firstName: chatMessage.role),
      id: chatMessage.id,
      text: chatMessage.message,
      createdAt: chatMessage.createdAt.millisecondsSinceEpoch,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<ChatMessage>> chatMessage = ref.watch(
      messageProvider(widget.symptomOccurrenceId),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Sintomas')),
      body: Center(
        child: switch (chatMessage) {
          AsyncData(:final value) => Chat(
            messages: value.map(_formatMessage).toList(),
            onSendPressed: (message) {
              if (message.text.length > 75) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Message too long.')),
                );
                return;
              }

              ref
                  .read(messageProvider(widget.symptomOccurrenceId).notifier)
                  .addMessage(message.text);

              ref
                  .read(messageProvider(widget.symptomOccurrenceId).notifier)
                  .sendMessage(message.text);
            },
            showUserAvatars: false,
            showUserNames: true,
            user: _user,
            theme: const DefaultChatTheme(
              primaryColor: Color(0xFF007AFF),
              secondaryColor: Color.fromARGB(160, 0, 79, 163),
              backgroundColor: Colors.white,
              inputBackgroundColor: Color.fromARGB(255, 221, 221, 221),
              inputTextColor: Colors.black,
              sentMessageBodyTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              receivedMessageBodyTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              attachmentButtonIcon: Icon(
                Icons.theater_comedy_outlined,
                color: Colors.black,
              ),
            ),
          ),
          AsyncError() => const Center(child: Text('Error loading messages')),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}