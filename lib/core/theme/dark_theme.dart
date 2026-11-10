import 'package:flutter/material.dart';
import 'package:my_app/core/theme/colors/dark_theme_colors.dart';
import 'package:my_app/core/theme/extensions/app_colors.dart';
import 'package:my_app/core/theme/typography/app.font.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppFont.family,
      scaffoldBackgroundColor: DarkColors.background,

      extensions: const [
        AppColors(
          primary: DarkColors.primary,
          secondary: DarkColors.secondary,
          background: DarkColors.background,
          mainText: DarkColors.text,
        ),
      ],
    );
  }
}