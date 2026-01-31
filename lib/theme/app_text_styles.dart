import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogiface/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextTheme textTheme(ColorScheme colorScheme) {
    final Color displayColor = colorScheme.onSurface;
    final Color bodyColor = colorScheme.onSurface;
    final Color mutedColor = colorScheme.onSurfaceVariant;

    return TextTheme(
      displayLarge: heading(57, FontWeight.w700, color: displayColor),
      displayMedium: heading(45, FontWeight.w700, color: displayColor),
      displaySmall: heading(36, FontWeight.w700, color: displayColor),
      headlineLarge: heading(32, FontWeight.w700, color: displayColor),
      headlineMedium: heading(28, FontWeight.w600, color: displayColor),
      headlineSmall: heading(24, FontWeight.w600, color: displayColor),
      titleLarge: heading(
        22,
        FontWeight.w600,
        letterSpacing: 0.05,
        color: displayColor,
      ),
      titleMedium: heading(
        18,
        FontWeight.w600,
        letterSpacing: 0.1,
        height: 1.3,
        color: displayColor,
      ),
      titleSmall: heading(
        16,
        FontWeight.w600,
        letterSpacing: 0.1,
        height: 1.3,
        color: displayColor,
      ),
      bodyLarge: body(16, color: bodyColor),
      bodyMedium: body(14, color: bodyColor),
      bodySmall: body(12, color: mutedColor, height: 1.4),
      labelLarge: heading(
        14,
        FontWeight.w600,
        letterSpacing: 0.1,
        height: 1.25,
        color: bodyColor,
      ),
      labelMedium: body(
        12,
        weight: FontWeight.w600,
        letterSpacing: 0.4,
        height: 1.25,
        color: mutedColor,
      ),
      labelSmall: body(
        11,
        weight: FontWeight.w600,
        letterSpacing: 0.5,
        height: 1.25,
        color: mutedColor,
      ),
    );
  }

  static TextStyle heading(
    double size,
    FontWeight weight, {
    double letterSpacing = -0.2,
    double height = 1.15,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? AppColors.overlayDark,
    );
  }

  static TextStyle body(
    double size, {
    FontWeight weight = FontWeight.w400,
    double letterSpacing = 0,
    double height = 0.8,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? AppColors.overlayDark,
    );
  }

  static TextStyle onboardingBody(
    double size, {
    FontWeight weight = FontWeight.w400,
    double letterSpacing = 0,
    double height = 0.8,
    Color? color,
  }) {
    return GoogleFonts.quicksand(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle latoBody(
    double size, {
    FontWeight weight = FontWeight.w400,
    double letterSpacing = 0,
    double height = 0.8,
    Color? color,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? AppColors.black,
    );
  }

  static TextStyle link({Color color = AppColors.info}) =>
      body(14, weight: FontWeight.w600, letterSpacing: 0.3, color: color);

  static TextStyle button({Color? color, double? size}) => heading(
        size ?? 15,
        FontWeight.w600,
        letterSpacing: 0.2,
        height: 1.25,
        color: color,
      );
}
