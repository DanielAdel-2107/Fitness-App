import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? gender;
  String? name;
  String? age;
  String? height;
  String? weight;
  String? userGoal;
  String? physicalLevel;
  String? dietType;
  String? chronicDiseases;
  String? text;

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');

  Future<void> addUser() {
    return users
        .add({
          'id': FirebaseAuth.instance.currentUser!.uid,
          'age': age ?? '',
          'gender': gender ?? '',
          'chronicDiseases': chronicDiseases ?? '',
          'dietType': dietType ?? '',
          'physicalLevel': physicalLevel ?? '',
          'userGoal': userGoal ?? '',
          'weight': weight ?? '',
          'height': height ?? '',
          'name': name ?? '',
        })
        .then((value) => print("User Added ${age}"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  // Future<void> addTask(String id ) {
  //   return tasks
  //       .add({
  //         'id': FirebaseAuth.instance.currentUser!.uid,
  //         'text':

  //          },
  //       })
  //       .then((value) => print("User Added "))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }
}
