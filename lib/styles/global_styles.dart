import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
TextStyle app_text_style(double size, Color color, FontWeight weight) {
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: weight);
}

// ignore: non_constant_identifier_names
TextStyle app_text_style_with_height(double size, Color color, FontWeight weight, double height) {
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: weight, height: height);
}