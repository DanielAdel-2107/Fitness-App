import 'package:fitness/Meals/MealPlanner.dart';
import 'package:flutter/material.dart';

import '../WorkOut/WorkoutSchedule.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Dialog(
            backgroundColor: Colors.black,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                           IconButton(
                             icon:Icon(Icons.clear_sharp,color: Colors.white,),
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => WorkoutSchedule()),
                               );
                             },),
                      Text(
                        "Workout Schedule",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_vert_sharp,color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Lowerbody Workout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.alarm),
                        color: Colors.amber.shade200,
                        onPressed: () {
                          // Add your action here for the alarm icon
                        },
                      ),
                      Text(
                        'Today | 03:00 PM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade100,
                      ),
                      onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => MealPlanner()),
    );
                          },
                      child: Text('Mark as Done',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),

                      ),
                    ),
                  ),
                ],
              ),
            ),

          )],
      ),
    );
  }
}