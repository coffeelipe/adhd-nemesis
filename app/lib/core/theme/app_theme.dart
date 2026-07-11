import 'package:flutter/material.dart';
import 'package:adhd_nemesis/core/theme/app_palette.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(
      primary: AppPalette.gold,
      secondary: AppPalette.emerald,
      tertiary: AppPalette.pink,
      surfaceContainerLow: AppPalette.teal,
      surfaceContainerHigh: AppPalette.blue,
      surface: AppPalette.lightBackground,
      onPrimary: AppPalette.onLight,
      onSecondary: AppPalette.onLight,
      onSurface: AppPalette.onLight,
    )
  );

  static final darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(
      primary: AppPalette.gold,
      secondary: AppPalette.emerald,
      tertiary: AppPalette.pink,
      surfaceContainerLow: AppPalette.teal,
      surfaceContainerHigh: AppPalette.blue,
      surface: AppPalette.darkBackground,
      onPrimary: AppPalette.onDark,
      onSecondary: AppPalette.onDark,
      onSurface: AppPalette.onDark,
    )
  );
}
