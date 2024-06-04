import 'package:fitness/UserInformation/Diet%20Informations/Views/Screens/first_ask_screen.dart';
import 'package:fitness/UserInformation/UserGoal.dart';
import 'package:fitness/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActivityLevel extends StatefulWidget {
  @override
  State<ActivityLevel> createState() {
    return ActivityLevelState();
  }
}

class ActivityLevelState extends State<ActivityLevel> {
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
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Physical Activity Level?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Choose your regular Activity level '
                    'this will help us to personalize plane for you.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Beginner'
                              ? Colors.amber.shade100
                              : Color(0xFF35383F),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Beginner';
                              prov.physicalLevel = 'Beginner';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Beginner',
                                style: TextStyle(
                                  color: selectedOption == 'Beginner'
                                      ? Colors.grey
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Intermediate'
                              ? Colors.amber.shade100
                              : Color(0xFF35383F),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Intermediate';
                              prov.physicalLevel = 'Intermediate';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Intermediate',
                                style: TextStyle(
                                  color: selectedOption == 'Intermediate'
                                      ? Color(0xFF35383F)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Advanced'
                              ? Colors.amber.shade100
                              : Color(0xFF35383F),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Advanced';
                              prov.physicalLevel = 'Advanced';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Advanced',
                                style: TextStyle(
                                  color: selectedOption == 'Advanced'
                                      ? Color(0xFF35383F)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
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
                            MaterialPageRoute(builder: (context) => UserGoal()),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstAskScreen()),
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
