import 'package:flutter/material.dart';
import 'package:messenger/theme/app_colors.dart';

class AppTheme {
  static const _colors = AppColors();

  static final ThemeData theme = ThemeData(
      primaryColor: _colors.primaryColor,
      canvasColor: _colors.secondaryColor,
      dialogBackgroundColor: _colors.popUpColor,
      buttonTheme: ButtonThemeData(
        buttonColor: _colors.buttonColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: TextTheme());
}
