import 'package:dashboard_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

/// Market Cap widget
Widget marketCap(double sizeFactor) {
  return Expanded(
    flex: 402,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack( // Stack for overlaying the design 
          children: [
            Container(
              color: Colors.white, 
              padding: EdgeInsets.symmetric(horizontal: sizeFactor * 0.005, vertical: sizeFactor * 0.007), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/logos/market_cap.png"), // Image asset for market cap icon
                      
                      const Gap(20), 

                      Text("Market Cap", // Market Cap
                          style: GoogleFonts.urbanist(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),

                  Expanded(
                    child: Center(child: marketSharePieChart(sizeFactor)), // Pie Chart
                  ),
                ],
              ),
            ),
            
            // Align used for making the design at the lower right hand side 
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 200, 
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12.33)), 
                  color: Color.fromRGBO(237, 247, 255, 1),
                ),
                child: Center(
                  child: Text(
                    "Based on positive sentiment",
                    style: GoogleFonts.urbanist(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
