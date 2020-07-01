import 'package:flutter/material.dart';
import 'package:official_recipe_app/assets/my_flutter_app_icons.dart';


class SettingsScreen extends StatelessWidget {
  // stateless because the changes are directly handles by flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              height: 250.0,
              color: Color(
                getColorHexFromStr('#fff5ea'),
                // gives the yellow pigment
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),   // allows me to place a back button
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  new Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://media.gq.com/photos/5e18a651c630f10008cb568d/1:1/w_983,h_983,c_limit/DrakeWatch.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Change Picture", // a clickable button that allows you to acess ur camera roll or camera
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 35.0,
                    width: double.infinity,
                    child: ListTile(
                      leading: Icon(Icons
                          .person_outline), // a changable text field to change your personal information
                      title: Text("Aubrey Graham"),
                    ),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(Icons.mail_outline),
                      title: Text("aubrey_graham@gmail.com"),
                    ),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("123-456-7890"),
                    ),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(MyFlutterApp.instagram),
                      title: Text("aubrey_graham"),
                    ),
                  ),
                  ListTile(
                    leading: Icon(MyFlutterApp.facebook_squared),
                    title: Text("aubrey_graham"),
                    ),
                  SizedBox(
                    height: 19.0
                  ),
                  Text("Description"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      padding: const EdgeInsets.fromLTRB(5.0, 2.0, 2.0, 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Type Something',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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


// a method that gives my the yellow pigment at the top half of the home screen
int getColorHexFromStr(String colorStr) {
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int val = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("An error occurred when converting a color");
    }
  }
  return val;
}
