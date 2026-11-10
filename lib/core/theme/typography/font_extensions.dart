import 'package:flutter/material.dart';

class FontVar {
  final double fontSize;
  final FontWeight fontWeight;

  const FontVar({
    required this.fontSize,
    required this.fontWeight,
  });

  TextStyle copyWith(
    BuildContext context, {
    String? fontFamily,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Inter',
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      color: color ?? Theme.of(context).colorScheme.onSurface,
    );
  }
}