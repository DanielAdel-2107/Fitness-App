import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSender;
  final Color color;


  const MessageBubble({
    required this.message,
    required this.isSender,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 3,
        top: 8,
        left: isSender ? 5 : 0,
        right: isSender ? 0 : 5,
      ),
      alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Colors.amber.shade50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isSender ? Colors.black : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
