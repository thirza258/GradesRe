import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemeApp {
// 1
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.black
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
// 2
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.openSans(
        fontSize: 14.00,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),

    headlineSmall: GoogleFonts.openSans(
        fontSize: 16.00,
        fontWeight: FontWeight.w500,
        color: Colors.black
    ),

    labelMedium: GoogleFonts.openSans(
        fontSize: 16.00,
        fontWeight: FontWeight.bold,
        color: Colors.white
    ),

    bodyMedium: GoogleFonts.openSans(
      fontSize: 14.00,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

    bodySmall: GoogleFonts.openSans(
      fontSize: 12.00,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

    labelLarge: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),

    bodyLarge: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),

    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,

    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w100,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
// 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
              (states) {
            return Colors.black;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const
      FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const
      BottomNavigationBarThemeData(
        selectedItemColor: Colors.blueAccent,
      ),
      textTheme: lightTextTheme,
    );
  }
// 4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const
      FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const
      BottomNavigationBarThemeData(
        selectedItemColor: Colors.blueAccent,
      ),
      textTheme: darkTextTheme,
    );
  }
}
