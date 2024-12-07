import 'package:flutter/material.dart';

class ThemeApp {
  final bool isDarkMode;

  ThemeApp({this.isDarkMode = false});

  final primary = const Color.fromARGB(255, 36, 240, 209);
  final primarySecond = const Color.fromARGB(255, 30, 180, 157);

  final secondary = const Color.fromARGB(255, 34, 240, 89);

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          secondary: secondary,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      );
}
