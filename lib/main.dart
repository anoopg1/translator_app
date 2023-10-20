import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_translator/presentation/home/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ScreenHome(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade900,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: Typography.whiteCupertino,
        ));
  }
}
