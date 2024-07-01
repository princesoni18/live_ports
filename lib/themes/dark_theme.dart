import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData dark_theme=ThemeData(

textTheme: GoogleFonts.openSansTextTheme(),

  colorScheme: const ColorScheme.dark(

    surface: bgcolor,

     primary: Colors.white,
     secondary: secondaryColor,
     tertiary: tertiaryColor
  ),


);
//
const Color bgcolor=Color(0xff34343B);
const primaryColor=Color(0xffF1BE6C);
const secondaryColor=Color(0xff3C3E43);
const tertiaryColor=Color(0xff171617);
const textColor=Colors.white;