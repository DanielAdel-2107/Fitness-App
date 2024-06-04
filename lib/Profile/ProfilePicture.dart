import 'package:fitness/Profile/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatefulWidget{
  @override
  State<ProfilePicture> createState() {
   return ProfilePictureState();
  }

}
class ProfilePictureState extends State<ProfilePicture>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Hey Amir,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Edit YOUR ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "PROFILE PICTURE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                    Center(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue.shade100),
                    child: Image.asset(
                      'assets/images/person.png',
                    ),
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.only(top: 66.0),
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                          child: Icon(Icons.add,color: Colors.white,size: 20,)),
                    ),
                  ],
                ),),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 204,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.amber.shade100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload,
                              color: Colors.black,
                              size: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                          builder: (context) => Home()),
                                  );
                                });
                              },
                              child: Text(
                                "UPLOAD ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),



          ]),
        ),
      ),
    );
  }

}