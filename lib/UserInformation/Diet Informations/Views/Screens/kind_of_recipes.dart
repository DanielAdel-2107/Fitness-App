import 'package:fitness/UserInformation/Diet%20Informations/Offline%20DataBase/offline_database.dart';
import 'package:fitness/UserInformation/Diet%20Informations/Views/Screens/any_diseases_screen.dart';
import 'package:flutter/material.dart';

class KindOfRecipes extends StatefulWidget {
  const KindOfRecipes({super.key});

  @override
  State<KindOfRecipes> createState() => _KindOfRecipesState();
}

class _KindOfRecipesState extends State<KindOfRecipes> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Steps 1 of 2'),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  "What Kind Of Recipes\n Do You Want?",
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
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.recipesKind.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.recipesKind[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase.recipesKind[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value: OfflineDataBase.recipesKind[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase.recipesKind[index].selected =
                                  value;
                            });
                            setState(() {
                              OfflineDataBase.selectedRecipes = OfflineDataBase
                                  .recipesKind
                                  .where((element) => element.selected == true)
                                  .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Preferred From Vegetables?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.preferredVegtables.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.preferredVegtables[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase
                                      .preferredVegtables[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value:
                            OfflineDataBase.preferredVegtables[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase
                                  .preferredVegtables[index].selected = value;
                            });
                            setState(() {
                              OfflineDataBase.selectedVegtables =
                                  OfflineDataBase.preferredVegtables
                                      .where(
                                          (element) => element.selected == true)
                                      .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Preferred From Fruits?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.preferedFruits.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.preferedFruits[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color:
                                  OfflineDataBase.preferedFruits[index].selected
                                      ? Colors.green
                                      : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value: OfflineDataBase.preferedFruits[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase.preferedFruits[index].selected =
                                  value;
                            });
                            setState(() {
                              OfflineDataBase.selectedFruits = OfflineDataBase
                                  .preferedFruits
                                  .where((element) => element.selected == true)
                                  .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Ingredients you prefer\n in your diet?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.ingredients.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.ingredients[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase.ingredients[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value: OfflineDataBase.ingredients[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase.ingredients[index].selected =
                                  value;
                            });
                            setState(() {
                              OfflineDataBase.selectedIngredients =
                                  OfflineDataBase
                                      .ingredients
                                      .where(
                                          (element) => element.selected == true)
                                      .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Things You Prefer For Your Breakfast?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .45,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.preferedBreakfast.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.preferedBreakfast[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase
                                      .preferedBreakfast[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value:
                            OfflineDataBase.preferedBreakfast[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase
                                  .preferedBreakfast[index].selected = value;
                            });
                            setState(() {
                              OfflineDataBase.selectedBreakfast =
                                  OfflineDataBase.preferedBreakfast
                                      .where(
                                          (element) => element.selected == true)
                                      .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Things You Prefer For Your\n Main Course?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.preferedMainCoures.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.preferedMainCoures[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase
                                      .preferedMainCoures[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value:
                            OfflineDataBase.preferedMainCoures[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase
                                  .preferedMainCoures[index].selected = value;
                            });
                            setState(() {
                              OfflineDataBase.selectedMainCourse =
                                  OfflineDataBase.preferedMainCoures
                                      .where(
                                          (element) => element.selected == true)
                                      .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(
                child: Text(
                  "Things You Prefer For\n Your Desserts?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: OfflineDataBase.preferedDesserts.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          OfflineDataBase.preferedDesserts[index].name,
                          style: TextStyle(
                              fontSize: 18,
                              color: OfflineDataBase
                                      .preferedDesserts[index].selected
                                  ? Colors.green
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                ),
                                Shadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                        value: OfflineDataBase.preferedDesserts[index].selected,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              OfflineDataBase.preferedDesserts[index].selected =
                                  value;
                            });
                            setState(() {
                              OfflineDataBase.selectedDesserts = OfflineDataBase
                                  .preferedDesserts
                                  .where((element) => element.selected == true)
                                  .toList();
                            });
                          }
                        },
                        activeColor: Colors.green[300],
                      );
                    }),
              ),
              GestureDetector(
                onTap: () {
                  if (OfflineDataBase.selectedRecipes.isNotEmpty &&
                      OfflineDataBase.selectedBreakfast.isNotEmpty &&
                      OfflineDataBase.selectedVegtables.isNotEmpty &&
                      OfflineDataBase.selectedFruits.isNotEmpty &&
                      OfflineDataBase.selectedIngredients.isNotEmpty &&
                      OfflineDataBase.selectedMainCourse.isNotEmpty &&
                      OfflineDataBase.selectedDesserts.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnyDiseasesScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'You should select one answer at least to every question!'),
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
                  padding:
                      const EdgeInsets.only(top: 150, left: 240, bottom: 30),
                  child: CircleAvatar(
                    backgroundColor: Colors.green[400],
                    foregroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
