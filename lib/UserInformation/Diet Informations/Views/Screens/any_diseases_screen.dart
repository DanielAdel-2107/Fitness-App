import 'package:fitness/Profile/Home.dart';
import 'package:fitness/UserInformation/Diet%20Informations/Views/Components/mycustom_radiorow.dart';
import 'package:fitness/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnyDiseasesScreen extends StatefulWidget {
  const AnyDiseasesScreen({super.key});

  @override
  State<AnyDiseasesScreen> createState() => _AnyDiseasesScreenState();
}

class _AnyDiseasesScreenState extends State<AnyDiseasesScreen> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Steps 2 of 2'),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Divider(
              color: Colors.grey[600],
              thickness: 4,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Center(
              child: Text(
                "Any chronic diseases ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            CustomRowRadio(
              value: 'heart disease',
              text: 'Heart Disease',
              description: "",
              groupValue: selectedOption,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedOption = value;
                  });
                }
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            CustomRowRadio(
              value: 'diabetes',
              text: 'Diabetes',
              description: "",
              groupValue: selectedOption,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedOption = value;
                  });
                }
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            CustomRowRadio(
              value: 'high blood pressure disease',
              text: 'High Blood Pressure Disease',
              description: "",
              groupValue: selectedOption,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedOption = value;
                  });
                }
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            CustomRowRadio(
              value: 'no chronic diseases',
              text: 'No Chronic Diseases',
              description: "",
              groupValue: selectedOption,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedOption = value;
                  });
                }
              },
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
                    if (selectedOption != '') {
                      prov.chronicDiseases = selectedOption;

                      prov.addUser();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'You should tell us if there are any diseases'),
                          duration: Duration(seconds: 5),
                          action: SnackBarAction(
                            label: 'OK',
                            onPressed: () {},
                          ),
                        ),
                      );
                    }
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
      ),
    );
  }
}
