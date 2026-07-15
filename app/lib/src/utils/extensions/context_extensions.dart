// context related extensions
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Returns the ThemeData for the current context.
  ThemeData get theme => Theme.of(this);

  // Returns the MediaQueryData for the current context.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  // Returns the size of the current context.
  Size get size => mediaQuery.size;

  // Returns the width of the current context.
  double get width => size.width;

  // Returns the height of the current context.
  double get height => size.height;

  // Safe area insets of the current context.
  EdgeInsets get padding => mediaQuery.padding;
}
