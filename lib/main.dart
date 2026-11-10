import 'package:flutter/material.dart';
import 'package:my_app/core/theme/app_theme.dart';
import 'package:my_app/core/theme/extensions/color_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const ThemeTestPage(),
    );
  }
}

class ThemeTestPage extends StatelessWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.background,
        title: Text(
          'Theme Test',
          style: TextStyle(color: context.colors.mainText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: context.colors.mainText,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Testing our custom theme system.',
              style: TextStyle(fontSize: 16, color: context.colors.mainText),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: context.colors.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: context.colors.primary),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Custom colors',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: context.colors.mainText,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _ColorPreview(name: 'Purple', color: context.colors.primary),
                  _ColorPreview(name: 'Teal', color: context.colors.secondary),
                  _ColorPreview(
                    name: 'Background',
                    color: context.colors.background,
                  ),
                  _ColorPreview(
                    name: 'Card background',
                    color: context.colors.background,
                  ),
                  _ColorPreview(name: 'Divider', color: context.colors.primary),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorPreview extends StatelessWidget {
  const _ColorPreview({required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: context.colors.primary),
            ),
          ),
          const SizedBox(width: 12),
          Text(name, style: TextStyle(color: context.colors.mainText)),
        ],
      ),
    );
  }
}
