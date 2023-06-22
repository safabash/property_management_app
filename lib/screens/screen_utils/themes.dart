import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ThemesForProject {
  final ThemeData customTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF845EF1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400, color: Colors.white),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24, // Change the text font size
        fontWeight: FontWeight.bold, // Change the text font weight
      ),
      displayMedium: TextStyle(
        color: Colors.grey, // Change the text color
      ),
      displaySmall: TextStyle(
        color: Colors.grey, // Change the text color
      ),
    ),
    colorScheme: const ColorScheme.light(primary: Color(0xFFF0EEF8)),
  );
}
