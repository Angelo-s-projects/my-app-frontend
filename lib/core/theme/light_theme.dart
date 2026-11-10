import 'package:flutter/material.dart';
import 'package:my_app/core/theme/colors/light_theme_colors.dart';
import 'package:my_app/core/theme/extensions/app_colors.dart';
import 'package:my_app/core/theme/typography/app.font.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: AppFont.family,
      scaffoldBackgroundColor: LightColors.background,

      extensions: const [
        AppColors(
          primary: LightColors.primary,
          secondary: LightColors.secondary,
          background: LightColors.background,
          mainText: LightColors.text,
        ),
      ],
    );
  }
}