import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/app/res/colors/app_colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.scaffoldColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.primaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style:
              ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor)),
      iconTheme: const IconThemeData(color: AppColor.whiteColor),
      textTheme: TextTheme(
        labelLarge: GoogleFonts.poppins(color: AppColor.whiteColor),
        labelMedium: GoogleFonts.poppins(
            color: AppColor.blackColor, fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.poppins(color: AppColor.blackColor),
        titleLarge: GoogleFonts.poppins(
            fontWeight: FontWeight.bold, color: AppColor.blackColor),
        titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w500),
      ));
  final darkTheme = ThemeData.dark().copyWith(
      primaryColor: AppColor.primaryColor,
      cardColor: AppColor.primaryColor,
      cardTheme: const CardTheme(color: AppColor.primaryColor),
      textTheme: TextTheme(
        labelLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w500),
      ));
}
