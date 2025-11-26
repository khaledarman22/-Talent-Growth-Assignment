import 'package:flutter/material.dart';

import '../utils/responsive_helper.dart';

class AppFontSizes {
  static const double displayLarge = 32;
  static const double displayMedium = 24;
  static const double titleLarge = 20;
  static const double titleMedium = 18;
  static const double bodyLarge = 16;
  static const double bodyMedium = 14;
  static const double labelLarge = 14;
}

class AppPalette {
  static const Color primary = Color(0xFF2196F3);
  static const Color secondary = Color(0xFFFF9800);

  // Light Colors
  static const Color backgroundLight = Color(0xFFF5F5F5);
  static const Color surfaceLight = Colors.white;
  static const Color textPrimaryLight = Color(0xFF212121);
  static const Color textSecondaryLight = Color(0xFF757575);

  // Dark Colors
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color textPrimaryDark = Color(0xFFE0E0E0);
  static const Color textSecondaryDark = Color(0xFFBDBDBD);
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color primary;
  final Color secondary;
  final Color background;
  final Color surface;
  final Color textPrimary;
  final Color textSecondary;
  final Color error;

  const AppColorsExtension({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.textPrimary,
    required this.textSecondary,
    required this.error,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? background,
    Color? surface,
    Color? textPrimary,
    Color? textSecondary,
    Color? error,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      error: error ?? this.error,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      error: Color.lerp(error, other.error, t)!,
    );
  }
}

class AppTextStylesExtension extends ThemeExtension<AppTextStylesExtension> {
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle labelLarge;

  const AppTextStylesExtension({
    required this.displayLarge,
    required this.displayMedium,
    required this.titleLarge,
    required this.titleMedium,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.labelLarge,
  });

  @override
  ThemeExtension<AppTextStylesExtension> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? labelLarge,
  }) {
    return AppTextStylesExtension(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      labelLarge: labelLarge ?? this.labelLarge,
    );
  }

  @override
  ThemeExtension<AppTextStylesExtension> lerp(
    ThemeExtension<AppTextStylesExtension>? other,
    double t,
  ) {
    if (other is! AppTextStylesExtension) return this;
    return AppTextStylesExtension(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
    );
  }
}

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final responsive = context.responsive;
    return _createTheme(
      context: context,
      responsive: responsive,
      brightness: Brightness.light,
      colors: const AppColorsExtension(
        primary: AppPalette.primary,
        secondary: AppPalette.secondary,
        background: AppPalette.backgroundLight,
        surface: AppPalette.surfaceLight,
        textPrimary: AppPalette.textPrimaryLight,
        textSecondary: AppPalette.textSecondaryLight,
        error: Colors.red,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final responsive = context.responsive;
    return _createTheme(
      context: context,
      responsive: responsive,
      brightness: Brightness.dark,
      colors: const AppColorsExtension(
        primary: AppPalette.primary,
        secondary: AppPalette.secondary,
        background: AppPalette.backgroundDark,
        surface: AppPalette.surfaceDark,
        textPrimary: AppPalette.textPrimaryDark,
        textSecondary: AppPalette.textSecondaryDark,
        error: Colors.redAccent,
      ),
    );
  }

  static ThemeData _createTheme({
    required BuildContext context,
    required ResponsiveHelper responsive,
    required Brightness brightness,
    required AppColorsExtension colors,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: colors.background,
      extensions: [
        colors,
        AppTextStylesExtension(
          displayLarge: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.displayLarge),
            fontWeight: FontWeight.bold,
            color: colors.textPrimary,
          ),
          displayMedium: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.displayMedium),
            fontWeight: FontWeight.bold,
            color: colors.textPrimary,
          ),
          titleLarge: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.titleLarge),
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
          titleMedium: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.titleMedium),
            fontWeight: FontWeight.w500,
            color: colors.textPrimary,
          ),
          bodyLarge: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.bodyLarge),
            color: colors.textPrimary,
          ),
          bodyMedium: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.bodyMedium),
            color: colors.textSecondary,
          ),
          labelLarge: TextStyle(
            fontSize: responsive.fontSize(AppFontSizes.labelLarge),
            fontWeight: FontWeight.bold,
            color: colors.primary,
          ),
        ),
      ],
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.textPrimary,
        centerTitle: true,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: colors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surface,
        hintStyle: TextStyle(color: colors.textSecondary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.textSecondary.withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.textSecondary.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
      ),
    );
  }
}

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  AppColorsExtension get colors => theme.extension<AppColorsExtension>()!;

  AppTextStylesExtension get textStyles =>
      theme.extension<AppTextStylesExtension>()!;
}
