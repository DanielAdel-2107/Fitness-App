import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final void Function(String) onSendMessage;

  const InputField({
    required this.onSendMessage,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 10,
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  shape: BoxShape.rectangle
                ),
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type your message here...',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber.shade200,
            ),
            child: IconButton(
              icon: Icon(Icons.keyboard_voice_sharp),
              color: Colors.black,
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handleSendMessage() {
    final message = _textEditingController.text.trim();
    if (message.isNotEmpty) {
      widget.onSendMessage(message);
      _textEditingController.clear();
    }
  }
}