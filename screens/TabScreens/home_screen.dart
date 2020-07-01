import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {   // a stateful widget because we need to set state
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[ // allows me to put widgets on other widgets
            Container(
              height: 250.0,
              color: Color(
                getColorHexFromStr('#fff5ea'),
                // gives the yellow pigment
              ),
            ),
            Column(
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
                        hintText: "Search for Recipes",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 25.0),
                    decoration: BoxDecoration(
                      border: Border(
                        // Featured Recipies Wording
                        left: BorderSide(
                          color: Colors.orange,
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Featured Recipes",
                              style: TextStyle(
                                fontSize: 23.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 158,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,   //makes the cards horizontally scrollable
                    children: <Widget>[
                      _featuredRecipeCard(
                        "George Hill",
                        "https://i2.wp.com/spicecravings.com/wp-content/uploads/2017/09/Paneer-Tikka-Masala-1.jpg",
                        "https://media-exp1.licdn.com/dms/image/C5603AQFVV3z_d2GBag/profile-displayphoto-shrink_200_200/0?e=1596672000&v=beta&t=fvi7Gx9hEQUO_CsXXRmUmYZPL1A7wdyfcnfCO8G3qZA",
                        "Paneer Tikka Masala",
                        context,
                      ),
                      _featuredRecipeCard(
                        "John Doe",
                        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/9/4/1/FNM_100112-Weeknight-Pea-Pasta-Dinner-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371609334277.jpeg",
                        "https://i.cdn.turner.com/nba/nba/.element/media/2.0/teamsites/spurs/Schad/img/Spurs/Headshots/gregg.jpg",
                        "Spinach Ravioli",
                        context,
                      ),
                      _featuredRecipeCard(
                        "Mike Miller",
                        "https://cdn.theliveinkitchen.com/wp-content/uploads/2019/12/04105421/Sheet-Pan-Veggie-Tacos-The-Live-In-Kitchen-Featured.jpg",
                        "https://yt3.ggpht.com/a/AATXAJyURdTXyNTonnAcIEoSKNxyFvLpriyrMAaTug=s900-c-k-c0xffffffff-no-rj-mo",
                        "Chicken Tacos",
                        context,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Text(
                    "May 31",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "TODAY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 26.0,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    InkWell(  // the inkwell makes sure that the image is clickable
                      onTap: () => best(context),
                      splashColor: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        height: 275,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(  
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Text(
                        "Best of \nThe Day",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}


// a method that handles the featured recipies, which takes in a name, the image of the food, and their profile picture.
Widget _featuredRecipeCard(String name, var imageUrl, var profilePicture,
    String recipeTitle, BuildContext context) {
  return InkWell(
    onTap: () => featured(context),
    child: Card(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 25.0,
        right: 10.0,
        bottom: 5.0,
      ),
      // an indivisual card that showcases featured recipies
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Container(
        padding: EdgeInsets.only(right: 6.0),
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Image.network(
                imageUrl,
                height: 170,
                width: 160,
              ),
            ),
            SizedBox(
              width: 120,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      recipeTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.orange,
                    thickness: 1,
                    endIndent: 40,
                    indent: 4,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(
                            profilePicture,
                            height: 40,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void best(BuildContext ctx) {
  // this is how i can navigate within a screen
  Navigator.of(ctx).pushNamed(
    '/bestoftheday',
  );
}
// navigates to a newpage when a featured recipe is clicked
void featured(BuildContext ctx) {
  Navigator.of(ctx).pushNamed(
    '/featuredRecipes',
  );
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
