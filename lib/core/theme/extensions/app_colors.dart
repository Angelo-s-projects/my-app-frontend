import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color primary;
  final Color secondary;
  final Color background;
  final Color mainText;

  const AppColors({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.mainText,
  });

  @override
  AppColors copyWith({
    Color? primary,
    Color? secondary,
    Color? background,
    Color? mainText,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      mainText: mainText ?? this.mainText,
    );
  }

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    if (other == null) return this;

    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      mainText: Color.lerp(mainText, other.mainText, t)!,
    );
  }
}