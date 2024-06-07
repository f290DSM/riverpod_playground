import 'package:flutter/material.dart';

final kLightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.deepOrange,
    accentColor: Colors.blue,
  ),
  chipTheme: ChipThemeData.fromDefaults(
    primaryColor: Colors.deepOrange,
    // brightness: Brightness.light,
    secondaryColor: Colors.blue,
    labelStyle: const TextStyle(
      color: Colors.black38,
      fontSize: 12,
    ),
  ),
);
// primaryColor != null || brightness != null': One of primaryColor or brightness
final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: Colors.deepOrange,
  chipTheme: ChipThemeData.fromDefaults(
    primaryColor: Colors.deepOrange,
    // brightness: Brightness.light,
    secondaryColor: Colors.blue,
    labelStyle: const TextStyle(
      color: Colors.white38,
      fontSize: 12,
    ),
  ),
);
