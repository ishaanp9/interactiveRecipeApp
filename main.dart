import 'package:flutter/material.dart';
import 'package:official_recipe_app/screens/InAppScreens/settings.dart';
import './screens/InAppScreens/featured_recipe_screen.dart';

import './screens/InAppScreens/best_of_the_day_screen.dart';
import './screens/TabScreens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RecipesApp",
      routes: {
        '/': (ctx) => TabsScreen(),
        '/bestoftheday': (ctx) => BestOfTheDayScreen(),
        '/featuredRecipes': (ctx) => FeaturedRecipes(),
        '/settingsPage': (ctx) => SettingsScreen(),
      },
    );
  }
  
  
}

// handles all the routes
// my app is very optimized with code seperated into many different files for perfromance,
// so it is not diectly handled by the main file

