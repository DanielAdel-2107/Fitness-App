import 'package:fitness/Setting/Alarm.dart';
import 'package:flutter/material.dart';

class AddWorkout extends StatefulWidget {
  @override
  State<AddWorkout> createState() {
    return AddWorkoutState();
  }
}

class AddWorkoutState extends State<AddWorkout> {
//time picker
  late TimeOfDay selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

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
                            icon: Icon(Icons.clear_sharp),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAlarm()),
                              );                            },
                          ),
                        ),
                        Text(
                          "Add Schedule",
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Color(0xFF35383F),
                        //   borderRadius: BorderRadius.circular(30.0),
                        //   shape: BoxShape.rectangle,
                        // ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: Icon(Icons.calendar_month_outlined),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              Text(
                                "   Thu, 27 May 2021",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Text(
                      "     Time",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "02      29     PM",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness:
                          1, // Adjust the thickness as per your requirement
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "03      30     PM",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness:
                          1, // Adjust the thickness as per your requirement
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "04      31     PM",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "  Details Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ////////////////(((((((((((((((((((((((((((((((((((((((((
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
                                          icon: Icon(Icons.fitness_center_sharp),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                        Text(
                                          "Choose Workout",
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
                                          "Upperbody Workout",
                                          style: TextStyle(
                                            color: Colors.amber.shade100,
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.navigate_next),
                                          color: Colors.amber.shade100,
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
                                          icon: Icon(Icons.swap_vert_outlined),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                        Text(
                                          "Difficulity",
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
                                          "Beginner",
                                          style: TextStyle(
                                            color: Colors.amber.shade100,
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.navigate_next),
                                          color: Colors.amber.shade100,
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
                                          icon: Icon(Icons.receipt),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                        Text(
                                          "Custom Repetitions",
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

                                        IconButton(
                                          icon: Icon(Icons.navigate_next),
                                          color: Colors.amber.shade100,
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
                                          icon: Icon(Icons.receipt),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                        Text(
                                          "Custom Weights",
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

                                        IconButton(
                                          icon: Icon(Icons.navigate_next),
                                          color: Colors.amber.shade100,
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

                      ])),
            ]
            )
        )
    );
  }
}
