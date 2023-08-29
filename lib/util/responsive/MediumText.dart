import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight font;
  final TextAlign align;
  const MediumText({
    required this.text,
    this.align = TextAlign.center,
    this.color = Colors.black,
    this.font = FontWeight.normal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(fontSize: 18, color: color, fontWeight: font),
      textAlign: align,
      overflow: TextOverflow.ellipsis,
    );
  }
}
