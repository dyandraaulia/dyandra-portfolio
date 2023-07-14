import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xff846684);
Color secondaryColor = const Color(0xffF2EEF2);
Color accentColor = const Color(0xff7D2574);

TextStyle headingStyle = GoogleFonts.poppins(
    fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black);

TextStyle titleStyle = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle subHeadingStyle = GoogleFonts.poppins(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

TextStyle findmeStyle = GoogleFonts.poppins(
  fontSize: 7,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle buttonStyle = GoogleFonts.poppins(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

var boxshadow = [
  BoxShadow(
    color: const Color.fromARGB(255, 196, 195, 195),
    spreadRadius: 2,
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
  BoxShadow(
    color: Colors.white,
    spreadRadius: 3,
    blurRadius: 6,
    offset: Offset(-3, -3),
  ),
];

var boxShadow2 = [
  BoxShadow(
    color: const Color.fromARGB(255, 196, 195, 195),
    spreadRadius: 2,
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
  BoxShadow(
    color: secondaryColor,
    spreadRadius: 3,
    blurRadius: 6,
    offset: Offset(-3, -3),
  ),
];

var neurophism = [
  BoxShadow(
    color: Color(0xFFA6B1C0), // Warna bayangan atas
    offset: Offset(-4, -4), // Posisi bayangan atas
    blurRadius: 8,
  ),
  BoxShadow(
    color: Color(0xFFFAFFFF), // Warna bayangan bawah
    offset: Offset(4, 4), // Posisi bayangan bawah
    blurRadius: 8,
  ),
];
