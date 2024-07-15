import 'package:dashboard_ui/data/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

/// Consumer success data.
Widget consumerSuccess(double sizeFactor) {
  return Expanded(
    flex: 402,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Consumer Success Title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text("Consumer Success Factor",
                    style: GoogleFonts.urbanist(
                      fontSize: sizeFactor * 0.013,
                      fontWeight: FontWeight.w500,
                    )
                  ),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      padding: EdgeInsets.symmetric(vertical: sizeFactor * 0.013, horizontal: sizeFactor * 0.008),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/logos/page_info.png",
                      height: sizeFactor * 0.01,
                      width: sizeFactor * 0.01,
                    ),
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: sizeFactor * 0.0001),
                        Text(
                          'Brand',
                          style: GoogleFonts.urbanist(
                            color: Colors.black,
                            fontSize: sizeFactor * 0.008
                          ),
                        ),
                        SizedBox(width: sizeFactor * 0.01),
                        Image.asset(
                          "assets/logos/chevron_right.png",
                          height: sizeFactor * 0.008,
                          width: sizeFactor * 0.008,
                        )
                      ],
                    ),
                  ),

                  // Reused widgets here again 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      colorDots(const Color.fromRGBO(154, 224, 255, 1), "Positive"),

                      const Gap(5),

                      colorDots(const Color.fromRGBO(25, 80, 143, 1), "Negative"),

                      const Gap(5),

                      colorDots(const Color.fromRGBO(217, 242, 255, 1), "Neutral")
                    ],
                  )
                ],
              ),
            ),
            // Bar Graph 
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: barGraph(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Reusable widget
Widget colorDots(Color color, String title) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        width: 7,
        height: 7,
      ),
      const Gap(4),
      Text(
        title,
        style: GoogleFonts.urbanist(fontSize: 9),
      )
    ],
  );
}

/// Bar graph widget
Widget barGraph() {
  return Padding(
    padding: const EdgeInsets.all(16.0), 
    child: BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround, // Alignment of bar groups within the chart
        maxY: 500, // Maximum value for the vertical axis
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true, // Whether to show side titles (labels on the bottom axis)
              getTitlesWidget: (double value, TitleMeta meta) { // Function to get custom title widgets
                var style = GoogleFonts.urbanist( // Font style for titles
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(191, 0, 0, 0),
                );
                Widget text; // Placeholder for the title widget
                switch (value.toInt()) { // Switch statement to determine title based on value
                  case 0:
                    text = Transform.translate( // Translate used to slightly move the text down by 5 pixels
                      offset: const Offset(0, 5),
                      child: Transform.rotate( // Rotate to rotate the text as given in the design
                        angle: -0.4,
                        child: Text('Camera', style: style),
                      ),
                    );

                  case 1:
                    text = Transform.translate( // Translation for case 1
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Software', style: style),
                      ),
                    );

                  case 2:
                    text = Transform.translate( // Translation for case 2
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Build-Design', style: style),
                      ),
                    );

                  case 3:
                    text = Transform.translate( // Translation for case 3
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Battery', style: style),
                      ),
                    );

                  case 4:
                    text = Transform.translate( // Translation for case 4
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Price', style: style),
                      ),
                    );

                  case 5:
                    text = Transform.translate( // Translation for case 5
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Processor', style: style),
                      ),
                    );

                  case 6:
                    text = Transform.translate( // Translation for case 6
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('Screen-Display', style: style),
                      ),
                    );

                  default:
                    text = Transform.translate( // Default (if none of the above cases match)
                      offset: const Offset(0, 5),
                      child: Transform.rotate(
                        angle: -0.4,
                        child: Text('', style: style),
                      ),
                    );
                }
    
                return SideTitleWidget( 
                  axisSide: meta.axisSide, // Specify the axis side (top or bottom)
                  child: text,
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              getTitlesWidget: (double value, TitleMeta meta) {
                var style = GoogleFonts.urbanist( // Font style for titles
                    fontSize: 12, fontWeight: FontWeight.bold);
                return Text(value.toInt().toString(), style: style); 
              },
              reservedSize: 42, // Reserved size for titles on the left axis
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false), // No titles on the right axis
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false), // No titles on the top axis
          ),
        ),
        borderData: FlBorderData(
          show: true, // Whether to show borders
          border: const Border(
            top: BorderSide.none, // No top border
            right: BorderSide.none, // No right border
            left: BorderSide(
                color: Color.fromARGB(32, 0, 0, 0),
                width: 1), // Only left border
            bottom: BorderSide(
                color: Color.fromARGB(32, 0, 0, 0),
                width: 1), // Only right border
          ),
        ),
        // This data can also be fetched using an API, if needed
        barGroups: [
          makeGroupData(0, 200, 50, 40),  // Data passed to makeGroupData function in data.dart
          makeGroupData(1, 150, 100, 60), // Data passed to makeGroupData function in data.dart
          makeGroupData(2, 175, 60, 20),  // Data passed to makeGroupData function in data.dart
          makeGroupData(3, 160, 180, 30), // Data passed to makeGroupData function in data.dart
          makeGroupData(4, 225, 50, 40),  // Data passed to makeGroupData function in data.dart
          makeGroupData(5, 200, 100, 70), // Data passed to makeGroupData function in data.dart
          makeGroupData(6, 140, 100, 20), // Data passed to makeGroupData function in data.dart
        ],
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true, 
          getDrawingHorizontalLine: (value) { 
            return const FlLine(
              color: Color.fromARGB(32, 0, 0, 0),
              strokeWidth: 1, // Width of the grid line
              dashArray: [2, 2], // Dashed pattern for the grid line
            );
          },
          getDrawingVerticalLine: (value) {// No vertical grid lines
            return const FlLine(
              strokeWidth: 0, 
            );
          },
        ),
      ),
    ),
  );
}
