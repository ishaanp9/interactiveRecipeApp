import 'package:flutter/material.dart';
import 'package:official_recipe_app/widgets/new_recipe.dart';


class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
  //String foodName;
  //String foodType;
}

final foodNameController = TextEditingController();
final foodTypeContoller = TextEditingController();

class _CreateScreenState extends State<CreateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 35.0, 15.0, 10.0),
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(25.0),
              child: TextFormField(
                // Search Bar Widget
                decoration: InputDecoration(
                  border: InputBorder
                      .none, // removes black border of search bar that comes in default
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                  hintText: "Search my Recipes",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            tooltip: 'Add Recipe',
            onPressed: null,
          ),
          NewRecipe(),
          Text(foodNameController.text),
          Text(foodTypeContoller.text),
        ],
      ),
    );

    /*TextField(
            // we may have to put these textfields in the recipe_add file, so we can display it in Bottom Modal Sheet, when the icon is pressed.
            decoration: InputDecoration(
              labelText: 'Food Name',
              hintText: 'Name of Food',
            ),
            onChanged: (String text) {
              var foodName = text;
              print(foodName);
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Type of Food',
            ),
            onSubmitted: (String text) {
              var foodType = text;
              print(foodType);
            },
          ),
          */
  }
}
