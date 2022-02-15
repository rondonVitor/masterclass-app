import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool isDark = true;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme() {
    isDark = !isDark;
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    backgroundColor: const Color(0xFF121517),
    primaryColor: const Color(0xFF055AA3),
    cardColor: const Color(0xFF172026),
    highlightColor: const Color(0xFFEDF4F8),
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    backgroundColor: const Color(0xFFD6DFE4),
    primaryColor: const Color(0xFF055AA3),
    cardColor: const Color(0xFFEDF4F8),
    highlightColor: const Color(0xFF172026),
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
