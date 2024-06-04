import 'package:fitness/UserInformation/UserGender.dart';
import 'package:flutter/material.dart';

class ThirdWelcome extends StatefulWidget {
  @override
  State<ThirdWelcome> createState() => ThirdWelcomeState();
}

class ThirdWelcomeState extends State<ThirdWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/third.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: 630,
              child: SizedBox(
                child: Center(
                  child: Text(
                    'Training',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: Positioned(
                left: 5,
                right: 20,
                child: Padding(
                  padding: const EdgeInsets.only(top: 690, left: 50, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Workout plans designed to help you '
                        'achieve your fitness goals '
                        '- whether losing weight or building muscles',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 351,
                  height: 66,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1.0, bottom: 12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade100,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserGender()),
                        );
                      },
                      child: Text(
                        'N E X T',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
