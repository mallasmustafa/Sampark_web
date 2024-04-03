import 'package:flutter/material.dart';
import 'package:sampark_web/config/color.dart';

var lightTheme = ThemeData();
var darkTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: dBackgroundColor,
      border: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      )),
  appBarTheme: AppBarTheme(
    backgroundColor: donContainerColor,
  ),
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: dPrimaryColor,
    onPrimary: donBackgroundColor,
    background: dBackgroundColor,
    onBackground: donBackgroundColor,
    primaryContainer: dContainerColor,
    onPrimaryContainer: donContainerColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 32,
        color: dPrimaryColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(
        fontSize: 30,
        color: donBackgroundColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        fontSize: 20,
        color: donBackgroundColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600),
    labelLarge: TextStyle(
        fontSize: 15,
        color: donContainerColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400),
    labelMedium: TextStyle(
        fontSize: 12,
        color: donContainerColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400),
    labelSmall: TextStyle(
        fontSize: 10,
        color: donContainerColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w300),
    bodyLarge: TextStyle(
        fontSize: 18,
        color: donBackgroundColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(
        fontSize: 15,
        color: donBackgroundColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500),
  ),
);
