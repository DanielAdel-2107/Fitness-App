import 'package:fitness/Compare/Comparison.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  State<Details> createState() {
    return DetailsState();
  }
}

class DetailsState extends State<Details> {
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
                          color: Colors.grey,
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
                        "BMI",
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
                          color: Colors.grey,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.more_horiz),
                          color: Colors.white,
                          onPressed: () {
                            // Add your action here for the back arrow
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                            width: 337,
                            height: 145,
                            decoration: BoxDecoration(
                  color: Color(0xFF35383F),
                  borderRadius: BorderRadius.circular(21.89),
                              shape: BoxShape.rectangle,
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                        Text("Your BMI",
                              style: TextStyle(color: Colors.grey.shade300,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                           Text("33.3",
                              style: TextStyle(color: Colors.grey.shade300,fontSize: 50,fontWeight: FontWeight.bold),
                            ),
                            Text("Obese",
                              style: TextStyle(color: Colors.amber.shade100,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                         ] ),
                      ),
                    ),
                    ]),
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 301,
              height: 270,
              decoration: BoxDecoration(
                color: Color(0xFF35383F),
                borderRadius: BorderRadius.circular(21.89),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Less than 18.5   ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Less than 18.5   ",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "18.5 to 24.9    ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " Healthy  ",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "25 to 29.9      ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " Overweight   ",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30 or above ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Obese  ",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
                Padding(
                  padding: const EdgeInsets.only(top: 51.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 293,
                        height: 64,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber.shade100,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Comparison()),
                              );
                            },
                            child: Text(
                              'Save Results',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],

                )
        ),

        );
  }
}
