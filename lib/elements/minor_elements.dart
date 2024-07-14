import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget sentimentText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
    child: Row(
      children: [
        Text(
          'Sentiment Analysis',
          style:
              GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const Icon(Icons.chevron_right),
        Text(
          'Overview',
          style:
              GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          ),
          onPressed: () {},
          icon: Image.asset("assets/logos/page_info.png"),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 4),
              Text(
                'Filters',
                style: GoogleFonts.urbanist(
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 15),
              Image.asset("assets/logos/chevron_right.png")
            ],
          ),
        )
      ],
    ),
  );
}
