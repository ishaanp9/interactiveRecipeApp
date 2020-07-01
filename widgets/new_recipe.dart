import 'package:flutter/material.dart';
import 'package:official_recipe_app/screens/TabScreens/create_screen.dart';
import 'package:official_recipe_app/widgets/recipe_card.dart';

class NewRecipe extends StatelessWidget {
  final foodNameController = TextEditingController();
  final foodTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Food Name'),  // Textfield to recieve user input
              controller: foodNameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Food Type'), // Textfield to recieve user input
              controller: foodTypeController, // saves user input using the contoller
            ),
            FlatButton(
                child: Text('Add Recipe'), 
                textColor: Colors.blue,
                onPressed: () {
                  new RecipeCard();
                }),
          ],
        ),
      ),
    );
  }
}
