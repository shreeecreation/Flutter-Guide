import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class HtmlStyleHelper {
  static Style htmlStyle({required double fontSize, required FontWeight fontWeight}) {
    return Style(
      fontSize: FontSize(fontSize),
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.zillaSlab().fontFamily,
    );
  }
}
