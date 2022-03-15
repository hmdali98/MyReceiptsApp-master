import 'package:flutter/material.dart';
import 'package:midterm/screens/cat_details.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'My Recipes App',
        theme: ThemeData(

          primarySwatch: Colors.teal,
          accentColor: Colors.amberAccent,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),

              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),

              subtitle1: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              )),
        ),


        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryDetails.routeName: (ctx) => CategoryDetails(),
        });
  }
}
