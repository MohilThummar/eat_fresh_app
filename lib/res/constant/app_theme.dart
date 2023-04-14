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
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: AppColors.primaryColor,
    //   secondary: AppColors.secondaryColor,
    //   error: Colors.red,
    //   surface: Colors.white,
    // ),

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
    fontFamily: "SF-Pro-Rounded",

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
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: AppColors.primaryColor,
    //   secondary: AppColors.secondaryColor,
    //   error: Colors.red,
    //   surface: Colors.black,
    // ),

    /// AppBar
    appBarTheme: const AppBarTheme(color: Colors.black),

    /// Menu
    popupMenuTheme: const PopupMenuThemeData(color: Colors.black),
    // dropdownMenuTheme: ,

    /// Icon
    iconTheme: const IconThemeData(color: Color(0xff989797)),
    // iconButtonTheme: ,

    /// Text
    textTheme: buildTextTheme(ThemeData.dark().textTheme),
    primaryTextTheme: buildTextTheme(ThemeData.dark().textTheme),
    fontFamily: "SF-Pro-Rounded",
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
    bodySmall: base.bodySmall!.copyWith(fontSize: 12, height: 1.33),
    bodyMedium: base.bodyMedium!.copyWith(fontSize: 14, height: 1.43),
    bodyLarge: base.bodyLarge!.copyWith(fontSize: 16, height: 1.5),

    /// Label Text
    labelSmall: base.labelSmall!.copyWith(fontSize: 11, height: 1.45),
    labelMedium: base.labelMedium!.copyWith(fontSize: 12, height: 1.33),
    labelLarge: base.labelLarge!.copyWith(fontSize: 14, height: 1.43),

    /// Title Text
    titleSmall: base.titleSmall!.copyWith(fontSize: 14, height: 1.43),
    titleMedium: base.titleMedium!.copyWith(fontSize: 16, height: 1.5),
    titleLarge: base.titleLarge!.copyWith(fontSize: 22, height: 1.27),

    /// Headline Text
    headlineSmall: base.headlineSmall!.copyWith(fontSize: 24, height: 1.33),
    headlineMedium: base.headlineMedium!.copyWith(fontSize: 28, height: 1.29),
    headlineLarge: base.headlineLarge!.copyWith(fontSize: 32, height: 1.25),

    /// Display Text
    displaySmall: base.displaySmall!.copyWith(fontSize: 36, height: 1.22),
    displayMedium: base.displayMedium!.copyWith(fontSize: 45, height: 1.16),
    displayLarge: base.displayLarge!.copyWith(fontSize: 57, height: 1.12),
  );
}

/// ---- Flutter official material 3 typography font size ---------------->>>
/*
Body Small  Size: 12, Height: 1.33
Body Medium  Size: 14, Height: 1.43
Body Large  Size: 16, Height: 1.5

Label Small  Size: 11, Height: 1.45
Label Medium  Size: 12, Height: 1.33
Label Large  Size: 14, Height: 1.43

Title Small  Size: 14, Height: 1.43
Title Medium  Size: 16, Height: 1.5
Title Large  Size: 22, Height: 1.27

Headline Small  Size: 24, Height: 1.33
Headline Medium  Size: 28, Height: 1.29
Headline Large  Size: 32, Height: 1.25

Display Small  Size: 36, Height: 1.22
Display Medium  Size: 45, Height: 1.16
Display Large  Size: 57, Height: 1.12
*/
