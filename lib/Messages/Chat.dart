import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InputField.dart';
import 'MeaasgeBubble.dart';
import 'Message.dart';
import 'Profile.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> messages = [
    Message(text: 'Hey There!', isSender: true), // Message 1
    Message(text: 'How are you?', isSender: true), // Message 2
    Message(text: 'How was your day?', isSender: true), // Message 9

    Message(text: 'Hello!', isSender: false),
    Message(text: 'I am fine and how are you?', isSender: false), // Message 7
    Message(text: 'Today was great!!!', isSender: false),
    Message(text: 'I am doing well, Can we meet tomorrow?', isSender: true), // Message 9
    Message(text: 'Yes Sure!', isSender: false), // Message 7
    Message(text: 'At what time?', isSender: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserProfile(),
          Expanded(
            child: Container(
              color: Colors.black,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Align(
                    alignment: message.isSender
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: MessageBubble(
                      message: message.text,
                      isSender: message.isSender,
                      color: message.isSender ? Colors.amber.shade50 : Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
          InputField(
            onSendMessage: _handleSendMessage,
          ),
        ],
      ),
    );
  }

  void _handleSendMessage(String message) {
    setState(() {
      messages.add(Message(text: message, isSender: true));
      // Simulating the receiver's response
      messages.add(Message(text: 'hey dear', isSender: false));
    });
  }
}