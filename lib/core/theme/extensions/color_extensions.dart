import 'package:flutter/material.dart';
import 'app_colors.dart';

extension ColorExtensions on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}