import 'package:fitness/Welcome/SecWelcome.dart';
import 'package:flutter/material.dart';



class FirstWelcome extends StatefulWidget {
  @override
  State<FirstWelcome> createState() => FirstWelcomeState();
}

class FirstWelcomeState extends State<FirstWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/fit.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                top: 40,
                left: 40,
                child: SizedBox(
                  width: 290,
                  height: 67,
                  child: Center(
                    child: Text(
                      'HEALTHIFY',
                      style: TextStyle(
                        color: Colors.amber.shade100,
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 200,
                left: 40,
                right: 40,
                child: SizedBox(
                  height: 100,
                  child: Center(
                    child: Text(
                      'Let’s Move',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 52.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 120,
                left: 40,
                right: 40,
                child: Text(
                  'Fitness and Wellness for you anytime, anywhere.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 40,
                right: 40,
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade100,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecWelcome()),
                      );
                    },
                    child: Text(
                      'G E T   S T A R T E D',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}