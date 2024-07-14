import 'package:dashboard_ui/elements/minor_elements.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customAppBar() {
  return Container(
    color: const Color.fromRGBO(255, 255, 255, 1),
    width: 54,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/logos/P.png")),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/logos/space_dashboard.png"),
                Image.asset("assets/logos/calendar_month.png"),
                Image.asset("assets/logos/content_paste_search.png"),
                Image.asset("assets/logos/request_quote.png"),
                Image.asset("assets/logos/readiness_score.png"),
                Image.asset("assets/logos/language.png"),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 239, 239, 239)),
                  child: Image.asset("assets/logos/batch_prediction.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 239, 239, 239)),
                  child: Image.asset("assets/logos/notifications_unread.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 239, 239, 239)),
                  child: Image.asset("assets/logos/help.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 239, 239, 239)),
                  child: Image.asset("assets/logos/support_agent.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget upperHalf() {
  return Expanded(
      child: Row(
    children: [
      // Widget (1,1) (5 Widgets Containing Hero Brand, Hero Product, Executive Summary, Competitor Benchmarking. Pricing Insights)
      Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                // Hero Brand, Hero Product Widgets
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    )),
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),
                // Executive Summary, Competitor Benchmarking. Pricing Insights Widgets
                Expanded(
                  child: Column(
                    children: [
                      // Executive Summary
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 204, 225, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Executive Summary",
                            style: GoogleFonts.urbanist(
                                color: const Color.fromRGBO(19, 113, 217, 1)),
                          ),
                        ),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      // Competitor Benchmarking
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 204, 225, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Competitor Benchmarking",
                            style: GoogleFonts.urbanist(
                                color: const Color.fromRGBO(19, 113, 217, 1)),
                          ),
                        ),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      // Pricing Insights
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 204, 225, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Pricing Insights",
                            style: GoogleFonts.urbanist(
                                color: const Color.fromRGBO(19, 113, 217, 1)),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          )),

      const SizedBox(
        width: 15,
      ),

      // Consumer Success Factor Widget
      Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
          )),

      const SizedBox(
        width: 15,
      ),

      // Market Cap Widget
      Expanded(
          flex: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
          )),
    ],
  ));
}

Widget linesAndText() {
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Divider(
          thickness: 1,
          color: Color.fromRGBO(0, 0, 0, 0.12),
        ),
      ),
      sentimentText(),
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Divider(
          thickness: 1,
          color: Color.fromRGBO(0, 0, 0, 0.12),
        ),
      ),
    ],
  );
}
