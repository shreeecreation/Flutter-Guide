import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class HtmlStyleHelper {
  static Style htmlStyle({required double fontSize, required FontWeight fontWeight}) {
    return Style(
      fontSize: FontSize(fontSize),
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.zillaSlab().fontFamily,
      lineHeight: const LineHeight(1.5),
      color: AppColors.black,
    );
  }
}
