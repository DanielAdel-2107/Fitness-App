import 'package:fitness/UserInformation/ActivityLevel.dart';
import 'package:fitness/UserInformation/UserGender.dart';
import 'package:fitness/provider/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserGoal extends StatefulWidget {
  @override
  State<UserGoal> createState() {
    return UserGoalState();
  }
}

class UserGoalState extends State<UserGoal> {
  String selectedOption = "";
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Center(
                child: Text(
                  'HEALTHIFY',
                  style: TextStyle(
                    color: Colors.amber.shade100,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'What Is Your Goal?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18),
                  child: Text(
                    textAlign: TextAlign.center,
                    'You can choose more than one. '
                    'Don’t worry, You can always change it later.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 60),
                  Container(
                    width: 470,
                    height: 88,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedOption == 'Gain Weight'
                                ? Colors.amber.shade100
                                : Colors.amber.shade100,
                            width: 2,
                          ),
                          color: Color(0xFF35383F),
                        ),
                        child: RadioListTile<String>(
                          title: Text(
                            'Gain Weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          value: 'Gain Weight',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.amber.shade100),
                          activeColor: Colors.amber.shade100,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 470,
                    height: 88,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.grey.shade300,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedOption == 'Lose Weight'
                                ? Colors.amber.shade100
                                : Colors.black,
                            width: 2,
                          ),
                          color: Color(0xFF35383F),
                        ),
                        child: RadioListTile<String>(
                          title: Text(
                            'Lose Weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          value: 'Lose Weight',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                          activeColor: Colors.amber.shade100,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 470,
                    height: 88,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.grey.shade300,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedOption == 'build_muscles'
                                ? Colors.amber.shade100
                                : Colors.amber.shade100,
                            width: 2,
                          ),
                          color: Color(0xFF35383F),
                        ),
                        child: RadioListTile<String>(
                          title: Text(
                            'Build Muscles',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          value: 'build_muscles',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.amber.shade100),
                          activeColor: Colors.amber.shade100,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 130),
                    child: SizedBox(
                      width: 150,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF35383F),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserGender()),
                          );
                        },
                        child: Text(
                          'B A C K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, top: 130),
                    child: SizedBox(
                      width: 210,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber.shade100,
                        ),
                        onPressed: () {
                          prov.userGoal = selectedOption;

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivityLevel()),
                          );
                        },
                        child: Text(
                          'C O N T I N U E',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
