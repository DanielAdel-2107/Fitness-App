import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.title,
    required this.documentId,
  });
  final String image;
  final String title;
  final String documentId;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isClicked = false;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  bool _isChecked = false;
  static const _oneDayInMillis = 86400000;

  @override
  void initState() {
    super.initState();
    _loadCheckboxState();
  }

  Future<void> _loadCheckboxState() async {
    final prefs = await SharedPreferences.getInstance();
    final isChecked = prefs.getBool(widget.title) ?? false;
    final timestamp = prefs.getInt('timestamp') ?? 0;

    if (isChecked) {
      final currentTime = DateTime.now().millisecondsSinceEpoch;
      if (currentTime - timestamp >= _oneDayInMillis) {
        // 24 hours have passed, uncheck the checkbox
        setState(() {
          _isChecked = false;
        });
        await prefs.setBool('checkbox_state', false);
      } else {
        setState(() {
          _isChecked = isChecked;
        });
      }
    }
  }

  Future<void> _saveCheckboxState(
      {required String key, required bool isChecked}) async {
    final prefs = await SharedPreferences.getInstance();
    final currentTime = DateTime.now().millisecondsSinceEpoch;

    setState(() {
      _isChecked = isChecked;
    });

    await prefs.setBool(key, isChecked);
    if (isChecked) {
      await prefs.setInt('timestamp', currentTime);
    }
  }

  Future<void> updateUserNotification(
      Map<String, dynamic> notificationData, bool isClicked) async {
    CollectionReference users = firestore.collection('Tasks');

    try {
      if (isClicked) {
        // Add the notification
        await users.doc(FirebaseAuth.instance.currentUser!.uid).update({
          'userList': FieldValue.arrayUnion([notificationData]),
        });
        print('Notification added successfully!');
      } else {
        // Remove the notification
        await users.doc(FirebaseAuth.instance.currentUser!.uid).update({
          'userList': FieldValue.arrayRemove([notificationData]),
        });
        print('Notification removed successfully!');
      }
    } catch (e) {
      if (e is FirebaseException && e.code == 'not-found') {
        if (isClicked) {
          // If the document doesn't exist and we're adding a notification, create the document
          await firestore
              .collection('Tasks')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .set({
            'userList': [notificationData],
          });
          print('User document created and notification added successfully!');
        } else {
          // If the document doesn't exist and we're trying to remove a notification, there's nothing to do
          print('Error: Document not found and cannot remove notification!');
        }
      } else {
        print('Error updating notification: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  shape: BoxShape.rectangle,
                ),
                child: Image.asset(widget.image),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "about 1 minutes ago",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    isClicked = value ?? false;
                    _saveCheckboxState(key: widget.title, isChecked: isClicked);
                    updateUserNotification(
                        {'title': widget.title, 'image': widget.image},
                        isClicked);
                  },
                ),
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
      ],
    );
  }
}
