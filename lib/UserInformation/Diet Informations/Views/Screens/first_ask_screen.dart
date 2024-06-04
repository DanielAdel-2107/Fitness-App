import 'package:fitness/UserInformation/Diet%20Informations/Views/Components/mycustom_radiorow.dart';
import 'package:fitness/UserInformation/Diet%20Informations/Views/Screens/any_diseases_screen.dart';
import 'package:fitness/UserInformation/Diet%20Informations/Views/Screens/kind_of_recipes.dart';
import 'package:fitness/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstAskScreen extends StatefulWidget {
  const FirstAskScreen({super.key});

  @override
  State<FirstAskScreen> createState() => _FirstAskScreenState();
}

class _FirstAskScreenState extends State<FirstAskScreen> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<UserProvider>(context);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('Steps 1 of 2'),
        ),
        body: Container(
          child: Column(
            children: [
              Divider(
                color: Colors.grey[400],
                thickness: 4,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Center(
                child: Text(
                  "what's your diet type?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Text(
                "We'll adapt to your exclusions",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              CustomRowRadio(
                value: 'Standard',
                text: 'Standard',
                description: "I'm easy",
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
                value: 'Vegetarian',
                text: 'Vegetarian',
                description: 'No meat or fish',
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
                value: 'Vegan',
                text: 'Vegan',
                description: 'No animal products',
                groupValue: selectedOption,
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedOption = value;
                    });
                  }
                },
              ),
              GestureDetector(
                onTap: () {
                  if (selectedOption != '') {
                    prov.dietType = selectedOption;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnyDiseasesScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('You should choose the type of your diet'),
                        duration: Duration(seconds: 5),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () {},
                        ),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 150, left: 240),
                  child: CircleAvatar(
                    backgroundColor: Colors.green[400],
                    foregroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
