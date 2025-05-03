import 'package:flutter/material.dart';

class AppTheme {
  //Light theme colors
  static const Color lightPrimaryColor = Color(0xff5e60ce);
  static const Color lightAccentColor = Color(0xff7400b8);
  static const Color lightBackgroundColor = Color(0xFFF9F9FC);
  static const Color lightCardColor = Colors.white;
  static const Color lightTextColor = Color(0xFF2B2D42);

  // Dark theme colors
  static const Color darkPrimaryColor = Color(0xFF5390D9);
  static const Color darkAccentColor = Color(0xFF4EA8DE);
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color darkCardColor = Color(0xFF1F1F1F);
  static const Color darkTextColor = Color(0xFFF8F9FA);

  // Category colors - Light Theme
  static const Color lightUnderweightColor = Color(0xFF5E60CE);
  static const Color lightNormalColor = Color(0xFF4CAF50);
  static const Color lightOverweightColor = Color(0xFFFF9800);
  static const Color lightObeseColor = Color(0xFFE53935);

  // Category colors - Dark Theme
  static const Color darkUnderweightColor = Color(0xFF5390D9);
  static const Color darkNormalColor = Color(0xFF81C784);
  static const Color darkOverweightColor = Color(0xFFFFB74D);
  static const Color darkObeseColor = Color(0xFFE57373);

  // Gradient colors
  static const List<Color> lightGradient = [
    Color(0xFF5E60CE),
    Color(0xFF4EA8DE),
  ];

  static const List<Color> darkGradient = [
    Color(0xFF5390D9),
    Color(0xFF243665),
  ];

  // Text styles - to be used with the appropriate color based on theme
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.3,
  );

  static const TextStyle labelStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  );

  static const TextStyle resultValueStyle = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );

  static const TextStyle resultCategoryStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static const TextStyle resultDescriptionStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    height: 1.5,
  );
  // Shadow for cards
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.5),
      blurRadius: 20,
      offset: const Offset(0, 5),
    ),
  ];

  // Button style
  static ButtonStyle buttonStyle(bool isDarkMode) {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: isDarkMode ? darkPrimaryColor : lightPrimaryColor,
      foregroundColor: Colors.white,
    );
  }

  // Card decoration
  static BoxDecoration cardDecoration(bool isDarkMode) {
    return BoxDecoration(
      color: isDarkMode ? darkCardColor : lightCardColor,
      borderRadius: BorderRadius.circular(16),
      boxShadow: cardShadow,
    );
  }

  //get the light theme

  static ThemeData getLightTheme() {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: lightPrimaryColor,
        scaffoldBackgroundColor: lightBackgroundColor,
        colorScheme: const ColorScheme.light(
            primary: lightPrimaryColor, secondary: lightAccentColor),
        cardTheme: CardTheme(
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: lightCardColor,
          margin: EdgeInsets.zero,
        ),
        sliderTheme: SliderThemeData(
            activeTrackColor: lightPrimaryColor,
            thumbColor: lightAccentColor,
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 24)),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: lightTextColor),
          bodyMedium: TextStyle(color: lightTextColor),
        ),
        iconTheme: const IconThemeData(color: lightPrimaryColor),
        appBarTheme: AppBarTheme(
            backgroundColor: lightPrimaryColor,
            centerTitle: true,
            elevation: 0,
            foregroundColor: Colors.white));
  }

// Get dark theme data
  static ThemeData getDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: darkPrimaryColor,
      scaffoldBackgroundColor: darkBackgroundColor,
      colorScheme: const ColorScheme.dark(
        primary: darkPrimaryColor,
        secondary: darkAccentColor,
      ),
      cardTheme: CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: darkCardColor,
        margin: EdgeInsets.zero,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: darkPrimaryColor,
        thumbColor: darkAccentColor,
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: darkTextColor),
        bodyMedium: TextStyle(color: darkTextColor),
      ),
      fontFamily: 'Poppins',
      iconTheme: const IconThemeData(
        color: darkAccentColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkPrimaryColor,
        elevation: 0,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }

  static Color getCategoryColor(String category, bool isDarkmode) {
    if (isDarkmode) {
      switch (category) {
        case 'Underweight':
          return darkUnderweightColor;
        case 'Normal':
          return darkNormalColor;
        case 'Overweight':
          return darkOverweightColor;
        case 'Obese':
          return darkObeseColor;
        default:
          return Colors.grey;
      }
    } else {
      switch (category) {
        case 'Underweight':
          return lightUnderweightColor;
        case 'Normal':
          return lightNormalColor;
        case 'Overweight':
          return lightOverweightColor;
        case 'Obese':
          return lightObeseColor;
        default:
          return Colors.grey;
      }
    }
  }
}
