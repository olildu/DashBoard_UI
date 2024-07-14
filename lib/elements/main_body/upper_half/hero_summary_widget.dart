import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

// Hero summary with various sections
Widget heroSummary(double sizeFactor) {
  return Expanded(
    flex: 190,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          // Hero Brand and Hero Product widgets
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: heroBrand(sizeFactor)), // Hero Brand widget
                const SizedBox(height: 10),
                Expanded(child: heroProduct(sizeFactor)), // Hero Product widget
              ],
            ),
          ),

          Gap(sizeFactor * 0.005),

          // Executive Summary, Competitor Benchmarking, and Pricing Insights
          Expanded(
            child: Column(
              children: [
                // Executive Summary container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 225, 255),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Executive Summary",
                        style: GoogleFonts.urbanist(
                          fontSize: sizeFactor * 0.01,
                          color: const Color.fromRGBO(19, 113, 217, 1),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Competitor Benchmarking container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 225, 255),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Competitor Benchmarking",
                        style: GoogleFonts.urbanist(
                          fontSize: sizeFactor * 0.01,
                          color: const Color.fromRGBO(19, 113, 217, 1),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Pricing Insights container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 225, 255),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Pricing Insights",
                        style: GoogleFonts.urbanist(
                          fontSize: sizeFactor * 0.01,
                          color: const Color.fromRGBO(19, 113, 217, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

// Displaying hero brand information
Widget heroBrand(double sizeFactor) {
  return Container(
    padding: EdgeInsets.all(sizeFactor * 0.005),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Hero brand icon and text
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(sizeFactor * 0.0015),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(26, 114, 211, 0.04),
              ),
              child: Container(
                padding: EdgeInsets.all(sizeFactor * 0.003),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(26, 114, 211, 0.08),
                ),
                child: Icon(
                  Icons.sell_outlined,
                  color: const Color.fromRGBO(26, 114, 211, 1),
                  size: sizeFactor * 0.011,
                ),
              ),
            ),
            Gap(sizeFactor * 0.005),
            Text(
              "Hero Brand", // Hero brand text
              style: GoogleFonts.urbanist(
                fontWeight: FontWeight.w500,
                fontSize: sizeFactor * 0.01,
              ),
            ),
          ],
        ),

        // Brand logo and rating information
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Brand logo and name
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logos/samsung_logo.png",
                    height: sizeFactor * 0.02,
                    width: sizeFactor * 0.02,
                  ),
              
                  Gap(sizeFactor * 0.005),
                  
                  FittedBox(
                    child: Text(
                      "Samsung",
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: sizeFactor * 0.0125,
                      ),
                    ),
                  ),
                ],
              ),
          
              // Positive rating percentage and review count
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeFactor * 0.005,
                      vertical: sizeFactor * 0.003,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(27, 141, 245, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: sizeFactor * 0.01,
                        ),
          
                        Gap(sizeFactor * 0.001),
          
                        Text(
                          "92% Positive",
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: sizeFactor * 0.005,
                          ),
                        ),
                      ],
                    ),
                  ),
          
                  Gap(sizeFactor * 0.003),

                  // Text rich is used for styling both text differenlty in the same span
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Based on ", // Stylied Differently than the bottom one
                          style: GoogleFonts.urbanist(
                            fontSize: sizeFactor * 0.005,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
          
                        TextSpan(
                          text: "12K reviews",
                          style: GoogleFonts.urbanist(
                            fontSize: sizeFactor * 0.005,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// Hero product information
Widget heroProduct(double sizeFactor) {
  return Container(
    padding: EdgeInsets.all(sizeFactor * 0.005),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Hero product icon and text
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(sizeFactor * 0.0015),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(26, 114, 211, 0.04),
              ),
              child: Container(
                padding: EdgeInsets.all(sizeFactor * 0.003),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(26, 114, 211, 0.08),
                ),
                child: Icon(
                  Icons.coffee_outlined,
                  color: const Color.fromRGBO(26, 114, 211, 1),
                  size: sizeFactor * 0.011,
                ),
              ),
            ),

            Gap(sizeFactor * 0.005),

            Text(
              "Hero Product", // Hero Product
              style: GoogleFonts.urbanist(
                fontWeight: FontWeight.w500,
                fontSize: sizeFactor * 0.01,
              ),
            ),
          ],
        ),

        // Product name and rating information
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Product name
              Row(
                children: [
                  FittedBox(
                    child: Text(
                      "Sony Bravia",
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: sizeFactor * 0.0125,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Rating percentage
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeFactor * 0.005,
                      vertical: sizeFactor * 0.003,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(27, 141, 245, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: sizeFactor * 0.01,
                        ),
                        Gap(sizeFactor * 0.001),
                        Text(
                          "89% Positive",
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: sizeFactor * 0.005,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Gap(sizeFactor * 0.003),

                  // Review text
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Based on ",
                          style: GoogleFonts.urbanist(
                            fontSize: sizeFactor * 0.005,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "2K reviews",
                          style: GoogleFonts.urbanist(
                            fontSize: sizeFactor * 0.005,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
