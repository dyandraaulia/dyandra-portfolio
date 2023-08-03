import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/homepage.dart';
import 'package:portfolio/pages/project_details.dart';
import 'package:portfolio/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      // theme: ThemeData(
      //   textTheme: GoogleFonts.poppinsTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        // '/project-details': (context) => const ProjectDetails(),
      },
    );
  }
}
