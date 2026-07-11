import 'package:adhd_nemesis/core/theme/app_palette.dart';
import 'package:adhd_nemesis/core/theme/app_theme.dart';
import 'package:adhd_nemesis/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
