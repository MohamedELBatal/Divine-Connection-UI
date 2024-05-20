import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tomorrow extends StatelessWidget {
  const Tomorrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Text(
        "A social event could put you in touch with someone who's carrying around a lot of bitterness and anger,"
            " Gemini. This probably won't be very pleasant for you,"
            " as this person could well see you as the perfect listening post for all their problems."
            " Don't feel trapped! Be polite but make your excuses as soon as you can."
            " There are other friends present whose company you'll enjoy a lot more!",
        style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20,),
      ),
    );;
  }
}
