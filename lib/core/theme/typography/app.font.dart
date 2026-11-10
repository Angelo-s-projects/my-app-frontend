import 'dart:ui';

import 'package:my_app/core/theme/typography/font_extensions.dart';

class AppFont {
  static const String family = 'Inter';

  static const display = FontVar(fontSize: 32, fontWeight: FontWeight.bold);
  static const heading = FontVar(fontSize: 24, fontWeight: FontWeight.bold);
  static const subheading = FontVar(fontSize: 20, fontWeight: FontWeight.w600);

  static const body = FontVar(fontSize: 16, fontWeight: FontWeight.normal);
  static const bodySmall = FontVar(fontSize: 14, fontWeight: FontWeight.normal);

  static const button = FontVar(fontSize: 14, fontWeight: FontWeight.w600);
  static const label = FontVar(fontSize: 14, fontWeight: FontWeight.w500);
  static const input = FontVar(fontSize: 16, fontWeight: FontWeight.normal);
}