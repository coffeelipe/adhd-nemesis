import 'package:flutter/material.dart';

/// A class that defines standardized dimensions for the application.
///
/// Available Sizes:
/// ```dart
///   double extraSmall = 4.0;
///   double small = 8.0;
///   double medium = 16.0;
///   double large = 24.0;
///   double extraLarge = 32.0;
/// ```
///
/// Available Padding Options:
/// ```dart
///   double paddingHorizontal = 20.0;
///   double paddingVertical = 24.0;
///
///   EdgeInsets edgeInsetsScreenHorizontal = EdgeInsets.symmetric(horizontal: paddingHorizontal);
///   EdgeInsets edgeInsetsScreenSymmetric = EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical);
/// ```
abstract final class AppDimens {
  const AppDimens();

  /// extraSmall = 4.0;
  static const double extraSmall = 4.0;

  /// small = 8.0;
  static const double small = 8.0;

  /// medium = 16.0;
  static const double medium = 16.0;

  /// large = 24.0;
  static const double large = 24.0;

  /// extraLarge = 32.0;
  static const double extraLarge = 32.0;

  /// paddingHorizontal = 20.0;
  static const double paddingHorizontal = 20.0;

  /// paddingVertical = 24.0;
  static const double paddingVertical = 24.0;

  double get paddingScreenHorizontal => paddingHorizontal;
  double get paddingScreenVertical => paddingVertical;

  EdgeInsets get edgeInsetsScreenHorizontal =>
      const EdgeInsets.symmetric(horizontal: paddingHorizontal);

  EdgeInsets get edgeInsetsScreenSymmetric => const EdgeInsets.symmetric(
    horizontal: paddingHorizontal,
    vertical: paddingVertical,
  );

  // Font Sizes:
  /// smallFontSize = 12.0;
  static const double smallFontSize = 12.0;

  /// bodyFontSize = 16.0;
  static const double bodyFontSize = 16.0;

  /// titleFontSize = 20.0;
  static const double titleFontSize = 20.0;

  /// headingFontSize = 24.0;
  static const double headingFontSize = 24.0;
}
