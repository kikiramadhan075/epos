import 'package:epos/presentation/auth/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ePOS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.white,
          elevation: 0,
          titleTextStyle: GoogleFonts.quicksand(
            color: AppColors.primary,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.primary,
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
