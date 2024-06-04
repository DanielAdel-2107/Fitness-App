import 'package:fitness/Setting/Alarm.dart';
import 'package:flutter/material.dart';

import '../Meals/MealPlanner.dart';
import '../Profile/Home.dart';
import '../WorkOut/WorkoutTracker.dart';

class SleepTracker extends StatefulWidget {
  @override
  State<SleepTracker> createState() {
    return SleepTrackerState();
  }
}

class SleepTrackerState extends State<SleepTracker> {
  bool switchValue = true;
  int currentIndexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                            shape: BoxShape.rectangle,
                            color: Color(0xFF35383F),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.navigate_before),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop(); // Navigate back to the previous page
                              },
                          ),
                        ),
                        Text(
                          "Sleep Tracker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            color: Color(0xFF35383F),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.more_horiz),
                            color: Colors.white,
                            onPressed: () {
                              // Add your action here for the back arrow
                            },
                          ),
                        ),
                      ]
                  )
              ),
                  Center(
                    child: Container(
                      width: 306,
                      height: 199,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        shape: BoxShape.rectangle,

                      ),
                      child: Image.asset(
                        'assets/images/sleeep.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[ Text(
                          "Today Schedule",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ] ),
                  ),

                  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey.shade800, // Set the desired color
                            ),
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
                                  child: Image.asset(
                                    'assets/images/bed.png',
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bedtime,",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                      Text(
                                        " 09:00pm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                        ],
                                      ),
                                      Text(
                                        "in 6hours 22minutes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Switch(
                                    value: switchValue,
                                    onChanged: (bool value) {
                                    },
                                    activeColor: Colors.amber.shade200,
                                    inactiveThumbColor: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade800, // Set the desired color
                      ),
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
                            child: Image.asset(
                              'assets/images/alarm.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Alarm,",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Text(
                                      " 05:10am",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "in 14hours 30minutes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Switch(
                              value: switchValue,
                              onChanged: (bool value) {
                              },
                              activeColor: Colors.amber.shade200,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                                children: <Widget>[
                                  ClipOval(
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      color: Colors.amber.shade100,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => AddAlarm()),
                                            );
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                  ),


            ]
            )
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentIndexx,
        onTap: (index) {
          setState(() {
            currentIndexx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()),
                    );
                  });
                },
                child: Icon(Icons.home)),
            label: "",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WorkoutTracker()),
                    );
                  });
                },
                child: Icon(Icons.fitness_center_sharp)),
            label: "",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SleepTracker()),
                    );
                  });
                },
                child: Icon(Icons.mode_night_outlined,color: Colors.amber.shade100,)),
            label: "",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MealPlanner()),
                    );
                  });
                },
                child: Icon(Icons.lunch_dining_sharp)),
            label: "",
            backgroundColor: Colors.black,
          ),
        ],
      ),

    );
  }
}
