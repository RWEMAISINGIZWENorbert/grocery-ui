import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 119, 79, 189)),
        scaffoldBackgroundColor: Colors.grey[300],
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color.fromARGB(255, 19, 48, 92),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayMedium: GoogleFonts.poppins(
            color: const Color.fromARGB(255, 19, 48, 92),
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),
          displaySmall: GoogleFonts.poppins(
            fontSize: 18,
            color: const Color.fromARGB(255, 7, 18, 34),
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}