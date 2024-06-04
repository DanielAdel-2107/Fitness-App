import 'package:flutter/material.dart';

import '../Profile/Profile.dart';

class AddAlarm extends StatefulWidget {
  @override
  State<AddAlarm> createState() {
    return AddAlarmState();
  }
}

class AddAlarmState extends State<AddAlarm> {
  bool switchValue = true;

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
                                icon: Icon(Icons.navigate_before_sharp),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).pop(); // Navigate back to the previous page
                                },
                              ),
                            ),
                            Text(
                              "Add Alarm",
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
                          ])),
                  SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 33, 0, 0),
                                  child: Container(
                                    width: 315,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.circular(30.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.bed),
                                              color: Colors.white,
                                              onPressed: () {},
                                            ),
                                            Text(
                                              "Bedtime",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "09:00 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.navigate_next),
                                              color: Colors.grey,
                                              onPressed: () {
                                                // Add your action here for the three dots
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Container(
                                    width: 315,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.circular(30.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.watch_later_outlined),
                                              color: Colors.white,
                                              onPressed: () {},
                                            ),
                                            Text(
                                              "Hours of sleep",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "8hours 30minutes",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.navigate_next),
                                              color: Colors.grey,
                                              onPressed: () {
                                                // Add your action here for the three dots
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Container(
                                    width: 315,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.circular(30.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.repeat_sharp),
                                              color: Colors.white,
                                              onPressed: () {},
                                            ),
                                            Text(
                                              "Repeat",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Mon to Fri",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.navigate_next),
                                              color: Colors.grey,
                                              onPressed: () {
                                                // Add your action here for the three dots
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Container(
                                    width: 315,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.circular(30.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.vibration),
                                              color: Colors.white,
                                              onPressed: () {},
                                            ),
                                            Text(
                                              "vibrate When Alarm Sound",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
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
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(top: 240.0),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Container(
                                          width:314 ,
                                          height: 40,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Profile()),
                                              );                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              Colors.amber.shade100,
                                            ),
                                            child: Text(
                                              'Add',
                                              style:
                                              TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ])),
                ]
            )
        )
    );
  }
}
