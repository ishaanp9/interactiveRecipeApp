import 'package:flutter/material.dart';
import './home_screen.dart';
import './create_screen.dart';
import './profile.dart';

// imports the libraries from the different screens that the tabs take you to.


class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  // I have a list that holds all the screens so when a specific tab is clicked
  // we get the index and can navigate to the specific page

   final List<Widget> _pages = [
    HomePage(),
    CreateScreen(),
    ProfileScreen(),
  ];

  int _selectedPageIndex = 0;

  // will set the state of the varibale to the specific index

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex], // will show the selcted page
      bottomNavigationBar: SizedBox(
        height: 40.0,
        child: BottomNavigationBar(
          onTap: _selectPage,
          items: [  // handles the ui of the bottom naviagtion bar
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.publish,
              ),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: Container(),
            ),
          ],
        ),
      ),
    );
  }
}