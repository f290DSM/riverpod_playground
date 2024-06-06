import 'package:flutter/material.dart';

final kLightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    accentColor: Colors.orangeAccent,
  ),
);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: Colors.blue,
);
