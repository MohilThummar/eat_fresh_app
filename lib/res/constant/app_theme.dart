import 'package:eat_fresh_app/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData baseLight = ThemeData.light();
  final ThemeData baseDark = ThemeData.dark();

  static ThemeData lightTheme = ThemeData(
    /// Colors
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    disabledColor: const Color(0x99b7b6b6),
    hoverColor: const Color(0x4DC8C8C8),
    splashColor: const Color(0x66C8C8C8),
    shadowColor: const Color(0x12000000),
    colorSchemeSeed: AppColors.primaryColor,
    colorScheme: const ColorScheme.light().copyWith(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: Colors.red,
      surface: Colors.white,
    ),

    /// AppBar
    appBarTheme: const AppBarTheme(color: Colors.white),

    /// Menu
    popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
    // dropdownMenuTheme: ,

    /// Icon
    iconTheme: const IconThemeData(color: Color(0xff2b2b2b)),
    // iconButtonTheme: ,

    /// Text
    textTheme: buildTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: buildTextTheme(ThemeData.light().textTheme),

    /// Button
    // buttonTheme: ,
    // elevatedButtonTheme: ,

    /// Dialog Box
    // dialogTheme: ,
    // dialogBackgroundColor: ,

    splashFactory: InkRipple.splashFactory,
    visualDensity: VisualDensity.comfortable,
    highlightColor: Colors.transparent,
    indicatorColor: AppColors.primaryColor,
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    /// Colors
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    disabledColor: const Color(0x99b7b6b6),
    hoverColor: const Color(0x4DC8C8C8),
    splashColor: const Color(0x66C8C8C8),
    shadowColor: const Color(0x12FFFFFF),
    colorSchemeSeed: AppColors.primaryColor,
    colorScheme: const ColorScheme.light().copyWith(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: Colors.red,
      surface: Colors.black,
    ),

    /// AppBar
    appBarTheme: const AppBarTheme(color: Colors.black),

    /// Menu
    popupMenuTheme: const PopupMenuThemeData(color: Colors.black),
    // dropdownMenuTheme: ,

    /// Icon
    iconTheme: const IconThemeData(color: Color(0xff989797)),
    // iconButtonTheme: ,

    /// Text
    textTheme: buildTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: buildTextTheme(ThemeData.light().textTheme),
    // textButtonTheme: ,

    /// Button
    // buttonTheme: ,
    // elevatedButtonTheme: ,

    /// Dialog Box
    // dialogTheme: ,
    // dialogBackgroundColor: ,

    splashFactory: InkRipple.splashFactory,
    visualDensity: VisualDensity.comfortable,
    indicatorColor: AppColors.primaryColor,
    highlightColor: Colors.transparent,
    useMaterial3: true,
  );
}

TextTheme buildTextTheme(TextTheme base) {
  return TextTheme(
    /// Body Text
    bodySmall: TextStyle(fontSize: 12.0, letterSpacing: 0.4, fontWeight: FontWeight.w400, color: base.bodySmall!.color),
    bodyMedium: TextStyle(fontSize: 14.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.bodyMedium!.color),
    bodyLarge: TextStyle(fontSize: 16.0, letterSpacing: 0.5, fontWeight: FontWeight.w400, color: base.bodyLarge!.color),

    /// Headline Text
    headlineSmall: TextStyle(fontSize: 24.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.headlineSmall!.color),
    headlineMedium: TextStyle(fontSize: 34.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.headlineMedium!.color),
    headlineLarge: TextStyle(fontSize: 96.0, letterSpacing: -1.5, fontWeight: FontWeight.w300, color: base.headlineLarge!.color),

    /// Display Text
    displaySmall: TextStyle(fontSize: 48.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.displaySmall!.color),
    displayMedium: TextStyle(fontSize: 60.0, letterSpacing: -0.5, fontWeight: FontWeight.w300, color: base.displayMedium!.color),
    displayLarge: TextStyle(fontSize: 96.0, letterSpacing: -1.5, fontWeight: FontWeight.w300, color: base.displayLarge!.color),

    /// Title Text
    titleSmall: TextStyle(fontSize: 14.0, letterSpacing: 0.1, fontWeight: FontWeight.w500, color: base.titleSmall!.color),
    titleMedium: TextStyle(fontSize: 16.0, letterSpacing: 0.15, fontWeight: FontWeight.w400, color: base.titleMedium!.color),
    titleLarge: TextStyle(fontSize: 20.0, letterSpacing: 0.15, fontWeight: FontWeight.w500, color: base.titleLarge!.color),

    /// Label Text
    labelSmall: TextStyle(fontSize: 10.0, letterSpacing: 1.5, fontWeight: FontWeight.w400, color: base.labelSmall!.color),
    labelMedium: TextStyle(fontSize: 10.0, letterSpacing: 1.5, fontWeight: FontWeight.w400, color: base.labelMedium!.color),
    labelLarge: TextStyle(fontSize: 14.0, letterSpacing: 1.25, fontWeight: FontWeight.w400, color: base.labelLarge!.color),
  );
}
