import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

// Handles the initial UI and route directory of the profile page.

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue[600],
            height: 260,
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 50.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.gq.com/photos/5e18a651c630f10008cb568d/1:1/w_983,h_983,c_limit/DrakeWatch.jpg"),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Aubrey Graham",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://www.freepnglogos.com/uploads/instagram-logos-png-images-free-download-2.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "aubrey_graham",
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512",
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "aubrey_graham",
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "10.2K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "543",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () => settings(context),
                            child: Text(
                              "EDIT PROFILE", // if clicked will switch to a new page
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: <Widget>[
                Text("Your Public Recipes"),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                      "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 200,
                  width: 180,
                  child: Image.network(
                      "https://drop.ndtv.com/albums/COOKS/pasta-vegetarian/pastaveg_640x480.jpg"),
                ),
              ),
            ],
          ),
          Text(
            "Add some more!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

// Directs to the new settings page
void settings(BuildContext ctx) {
  Navigator.of(ctx).pushNamed(
    '/settingsPage',
  );
}
