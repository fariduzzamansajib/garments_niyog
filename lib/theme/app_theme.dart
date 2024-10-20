
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_colors_theme.dart';

class AppTheme {
  AppTheme._();
  static Color colorOrange = Colors.orange;
  static Color colorGray =Colors.grey;
  static Color lightAppbarColor = Colors.indigo;
  static Color darkAppbarColor = Colors.black;
  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;

  static ThemeData get({required bool isLight}) {
    final base = isLight ? ThemeData.light() : ThemeData.dark();
    return base.copyWith(
      extensions: [
        CustomColorsTheme(
          colorLabelColor: isLight ? blackColor : whiteColor,
          bottomNavigationBarBackgroundColor: isLight ? blackColor : whiteColor,
          activeNavigationBarColor: isLight ? blackColor : whiteColor,
          notActiveNavigationBarColor: isLight ? blackColor : whiteColor,
          shadowNavigationBarColor: isLight ? blackColor : whiteColor,
        )
      ],
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: isLight ? blackColor : whiteColor),
        bodyMedium: TextStyle(color: isLight ? blackColor : whiteColor),
        bodySmall: TextStyle(color: isLight ? blackColor : whiteColor),
        titleLarge: TextStyle(color: isLight ? blackColor : whiteColor),
        titleMedium: TextStyle(color: isLight ? blackColor : whiteColor),
        titleSmall: TextStyle(color: isLight ? blackColor : whiteColor),
        headlineLarge: TextStyle(color: isLight ? blackColor : whiteColor),
        headlineMedium: TextStyle(color: isLight ? blackColor : whiteColor),
        headlineSmall: TextStyle(color: isLight ? blackColor : whiteColor),
        displayLarge: TextStyle(color: isLight ? blackColor : whiteColor),
        displayMedium: TextStyle(color: isLight ? blackColor : whiteColor),
        displaySmall: TextStyle(color: isLight ? blackColor : whiteColor),
        labelLarge: TextStyle(color: isLight ? blackColor : whiteColor),
        labelMedium: TextStyle(color: isLight ? blackColor : whiteColor),
        labelSmall: TextStyle(color: isLight ? blackColor : whiteColor),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: isLight ? Colors.yellow : colorOrange,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor:
              isLight ? lightAppbarColor : darkAppbarColor,
          statusBarColor: isLight ? lightAppbarColor : darkAppbarColor,
          statusBarBrightness: isLight ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
              isLight ? Brightness.light : Brightness.light,
          systemNavigationBarIconBrightness:
              isLight ? Brightness.light : Brightness.dark,
        ),
        backgroundColor: isLight ? lightAppbarColor : darkAppbarColor,
        iconTheme: IconThemeData(color: whiteColor),
        actionsIconTheme: IconThemeData(color: whiteColor),
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
        },
      ),
      colorScheme: base.colorScheme.copyWith(
        surface: isLight ? Colors.white : Colors.grey,
      ),
      applyElevationOverlayColor: false,
      scaffoldBackgroundColor:
          isLight ? whiteColor : Color.fromARGB(221, 39, 38, 38),
    );
  }
}
