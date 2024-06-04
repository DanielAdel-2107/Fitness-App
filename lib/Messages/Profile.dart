import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 100,
      padding: EdgeInsets.all(16),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: Colors.grey.shade800,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Navigate back to the previous page

                },
                icon: Icon(Icons.navigate_before),
                color: Colors.white,
              ),
            ),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 24,
              child: Image.asset('assets/images/alli.png')
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Anil',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              'Online - Last seen, 2.02pm',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
