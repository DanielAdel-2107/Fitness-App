// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/Welcome/FirstWelcome.dart';
import 'package:flutter/material.dart';
import 'LogIn.dart';

class UserRegister extends StatefulWidget {
  @override
  State<UserRegister> createState() {
    return UserRegisterState();
  }
}

class UserRegisterState extends State<UserRegister> {
  var password = '';
  var Email = '';
  var emailLink;
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController state = TextEditingController();
  String? role;
  String? enteredName;
  bool value = false;

//Validation for mail and password
  final _formKey = GlobalKey<FormState>();
  String emailErrorText = '';
  String passwordErrorText = '';

  void validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        emailErrorText = 'Email is required';
      });
    } else if (!isEmailValid(value)) {
      setState(() {
        emailErrorText = 'Enter a valid email address';
      });
    } else {
      setState(() {
        emailErrorText = '';
      });
    }
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      setState(() {
        passwordErrorText = 'Password is required';
      });
    } else if (value.length < 6) {
      setState(() {
        passwordErrorText = 'Password must be at least 6 characters long';
      });
    } else {
      setState(() {
        passwordErrorText = '';
      });
    }
  }

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Center(
                  child: Text(
                    'Hey There,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Center(
                child: Text(
                  'Create an Account ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                textAlign: TextAlign.start,
                onChanged: (value) {
                  setState(() {
                    enteredName = value; // Update the entered name value
                  });
                },
                // First name
                decoration: InputDecoration(
                  hintText: 'First Name',
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                textAlign: TextAlign.start,
                onChanged: (value) {
                  setState(() {
                    enteredName = value; // Update the entered name value
                  });
                },
                // Last name
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 18,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: emailcontroller,
                        textAlign: TextAlign.start,
                        onChanged: (value) {
                          setState(() {
                            Email = value;
                            validateEmail(value);
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                            size: 18,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  if (emailErrorText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        emailErrorText,
                        style: TextStyle(fontSize: 8, color: Colors.red),
                      ),
                    ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: Passwordcontroller,
                        textAlign: TextAlign.start,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                            validatePassword(value);
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                            size: 18,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            color: Colors.white,
                            size: 18,
                          ),
                          Center(
                            child: Text(
                              'By continuing you accept our Privacy Policy and Term of Use',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                  ),
                  if (passwordErrorText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        passwordErrorText,
                        style: TextStyle(fontSize: 8, color: Colors.red),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 161.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 315,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber.shade100,
                              ),
                              onPressed: () async {


                                try {
                    // ignore: unused_local_variable
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: emailcontroller.text,
                      password: Passwordcontroller.text,
                    );
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstWelcome()),
                                );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {

                    } else if (e.code == 'email-already-in-use') {

                    }
                  } catch (e) {
                    print(e);
                  }
                   
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Already have an account?  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogIn()),
                                );
                              });
                            },
                            child: Text(
                              ' Login ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.amber.shade100,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
