import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500, // Add font weight if needed
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.black), // bodyText1 equivalent
        bodySmall: TextStyle(color: Colors.black54), // bodyText2 equivalent
        titleLarge: TextStyle(color: Colors.white), // headline6 equivalent for app bar title
      ),
    );
  }
}
