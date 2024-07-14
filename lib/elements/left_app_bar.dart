import 'package:flutter/material.dart';

// Custom app bar widget with responsiveness based on sizeFactor
Widget customAppBar(double sizeFactor) {
  return Container(
    color: Colors.white,
    width: sizeFactor * 0.04, // Use case of responsiveness
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Only vertical padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Top Logo
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20), // Padding to shift the logo down
              child: Image.asset("assets/logos/P.png"), // Logo (Imported from Figma)
            ),
          ),

          // Center Icons
          Expanded(
            flex: 6, // Flex is used for proper positioning
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Images for the logos
                  Image.asset("assets/logos/space_dashboard.png"),
                  Image.asset("assets/logos/calendar_month.png"),
                  Image.asset("assets/logos/content_paste_search.png"),
                  Image.asset("assets/logos/request_quote.png"),
                  Image.asset("assets/logos/readiness_score.png"),
                  Image.asset("assets/logos/language.png"),
                  // Special Container with colored background
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(19, 113, 217, 0.12),
                    ),
                    child: Image.asset("assets/logos/batch_prediction.png"),
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom icons
          Expanded(
            flex: 2, // Flex is used for responsive height
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Reducing number of lines and used a widget 
                circleIcon("assets/logos/notifications_unread.png"),
                circleIcon("assets/logos/help.png"),
                circleIcon("assets/logos/support_agent.png"),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

// Circle Icon with background color
Widget circleIcon(String assetPath) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromARGB(255, 239, 239, 239),
    ),
    child: Image.asset(assetPath),
  );
}
