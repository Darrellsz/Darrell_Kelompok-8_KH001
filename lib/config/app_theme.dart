import 'package:flutter/material.dart';
import 'app_palette.dart';

class AppTheme {
  static ThemeData get cleanLight {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppPalette.canvas,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppPalette.accent,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppPalette.inkDark,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}