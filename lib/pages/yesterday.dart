import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Yesterday extends StatelessWidget {
  const Yesterday({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Text(
        "The desire to go off by yourself and enjoy a little solitude is likely to be"
            " in conflict with the reality of your obligations today, Gemini. "
            "You could find yourself spacing out at times and unable to concentrate on any tasks at hand,"
            " so try to stay focused. Some irritating letters or phone calls could come your way,"
            " but nothing that you can't deal with. See an exciting movie tonight.",
        style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20),
      ),
    );
  }
}
