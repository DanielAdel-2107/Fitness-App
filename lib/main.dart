import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/Login/Login.dart';
import 'package:fitness/Profile/Home.dart';
import 'package:fitness/firebase_options.dart';
import 'package:fitness/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('=====User currently signed out!======================');
      } else {
        print('======User is signed in in!===========================');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: FirebaseAuth.instance.currentUser == null ? LogIn() : Home(),
        // routes: {
        //   'login': (context) => LogIn(),
        //   'SignUp': (context) => const test(),
        // },
      ),
    );
  }
}
