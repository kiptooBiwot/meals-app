import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

void main() => runApp(const MealsApp());

class MealsApp extends StatelessWidget {
  const MealsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 0)),
              bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 0)),
              headline6: const TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/', //This is the initial route / can be named to anything
      routes: {
        '/': (ctx) => const TabsScreen(),
        '/category-meals': (ctx) => const CategoryMealsScreen(),
        '/meal-detail': (ctx) => const MealDetailScreen(),
      },
      // If a route cannot be reached, this onGenerateRoute specifies a fallback route
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const CategoriesScreen(),
        );
      },

      // When Flutter fails to build a screen with the above provided routes it fallsback to this fn as the last line of defense before throwing an error to the screen.
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const CategoriesScreen());
      },
    );
  }
}
