import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../screens/TabScreens/create_screen.dart';

class RecipeCard extends StatefulWidget {
  @override
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera); // getter method to recieve image

    setState(() {
      _image = File(pickedFile.path); // sets the choose picture icon to the selected image
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 30,
              ),
              height: 80,
              width: 100,
              child: FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Pick Image',  // allows me to select an image
                child: Icon(
                  Icons.add_a_photo,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, top: 20, right: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    foodNameController.text, // Food Name
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    foodTypeContoller.text, // Food Type
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
