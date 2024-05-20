import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Text(
        "You’re usually a very practical and down-to-Earth person,"
            " but today you may be more inclined than usual toward mysticism."
            " Spiritual matters seem extremely appealing,"
            " and you could find yourself gravitating toward metaphysical bookstores or seeking discussions with people who are well versed in such matters."
            " You also find your imagination working overtime."
            " Indulge in a few flights of fancy, Gemini. We all need to escape from time to time!",
        style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20),
      ),
    );;
  }
}
