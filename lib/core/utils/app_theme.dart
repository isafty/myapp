import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.amber,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Define other theme properties here
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  // You can define more themes like darkTheme here
  // static ThemeData get darkTheme {
  //   return ThemeData(
  //     brightness: Brightness.dark,
  //     primarySwatch: Colors.blueGrey,
  //     visualDensity: VisualDensity.adaptivePlatformDensity,
  //   );
  // }
}
