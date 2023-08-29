import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtraSmallText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  final FontWeight font;
  const ExtraSmallText({
    this.align = TextAlign.center,
    this.font=FontWeight.normal,
    required this.text,
    this.color = const Color(0xff787878),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(fontSize: 14, color: color, fontWeight: font),
      textAlign: align,
    );
  }
}
