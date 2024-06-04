import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/Profile/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications> {
  List<bool> isSelectedList = List.generate(8, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFF35383F),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.navigate_before),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  const Text(
                    "Notification",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFF35383F),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      color: Colors.white,
                      onPressed: () {
                        // Add your action here for the more options
                      },
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder<QuerySnapshot>(
              future:
                  FirebaseFirestore.instance.collection('notifications').get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(
                    child: Text("No documents found"),
                  );
                }
                List<DocumentSnapshot> documents = snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data =
                        documents[index].data() as Map<String, dynamic>;
                    return CustomCard(
                      title: data['title'] ?? 'No Title',
                      image: data['image'] ?? 'assets/images/default.png',
                      documentId: documents[index].id,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /////////////
}
