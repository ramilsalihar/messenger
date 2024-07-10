import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/presentation/theme/app_colors.dart';

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
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: _colors.purpleColor,
      secondary: _colors.yellowColor,
      onSurface: _colors.greyColor,
      onSecondaryContainer: _colors.popUpColor,
      onTertiary: _colors.buttonColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _colors.blackColor,
      selectedItemColor: _colors.yellowColor,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: GoogleFonts.ubuntu(
        color: Colors.white.withOpacity(0.9),
        fontSize: 16.0,
        fontWeight: FontWeight.w300,
      ),
      headlineMedium: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
      ),
      headlineSmall: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
