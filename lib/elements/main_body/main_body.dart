import 'package:dashboard_ui/elements/main_body/lower_half/lower_half.dart';
import 'package:dashboard_ui/elements/main_body/upper_half/upper_half_main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

// Main body widget with responsiveness based on sizeFactor
Widget mainBody(double sizeFactor) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sentiment Analysis Text and Lines
            linesAndText(),

            // Upper Half
            upperHalf(sizeFactor),

            const Gap(10),
            // Bottom Half
            lowerHalf(sizeFactor)
          ],
        ),
      ),
    ),
  );
}

// Widget for sentiment analysis text and divider lines
Widget linesAndText() {
  return Column(
    children: [
      // Line 1
      const Padding(
        // Padding to shift little away from left to mimic figma design
        padding: EdgeInsets.only(left: 15.0),
        child: Divider(
          thickness: 1,
          color: Color.fromRGBO(0, 0, 0, 0.12),
        ),
      ),

      sentimentText(), // Moved to a widget to make the code look more presentable

      // Line 2
      const Padding(
        // Padding to shift little away from left to mimic figma design
        padding: EdgeInsets.only(left: 15.0),
        child: Divider(
          thickness: 1,
          color: Color.fromRGBO(0, 0, 0, 0.12),
        ),
      ),
    ],
  );
}

// Widget for sentiment analysis text and filter button
Widget sentimentText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
    child: Row(
      children: [
        // Sentiment Analysis Text
        Text(
          'Sentiment Analysis',
          style: GoogleFonts.urbanist(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),

        const Icon(Icons.chevron_right), // (>) Icon

        // Overview Text
        Text(
          'Overview',
          style: GoogleFonts.urbanist(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        
        const Spacer(), // Spacer to fill empty space will filling button in place

        // Filters Button
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          ),

          onPressed: () {}, // Empty funtion [Not Defined]

          icon: Image.asset("assets/logos/page_info.png"), // Tuning Icon

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
