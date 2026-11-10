import 'package:flutter/material.dart';
import 'package:my_app/core/theme/light_theme.dart';
import 'package:my_app/core/theme/dark_theme.dart';

class AppTheme {
  static ThemeData get light => LightTheme.theme;
  static ThemeData get dark => DarkTheme.theme;
}