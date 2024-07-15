import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Bar Chart Widget 
BarChartGroupData makeGroupData(int x, double y1, double y2, double y3) {
  return BarChartGroupData(
    barsSpace: 4,
    x: x,
    barRods: [
      BarChartRodData(
        toY: y1 + y2 + y3,
        width: 20,
        borderRadius: BorderRadius.circular(2),
        rodStackItems: [
          BarChartRodStackItem(0, y1, const Color.fromRGBO(154, 224, 255, 1)),
          BarChartRodStackItem(y1, y1 + y2, const Color.fromRGBO(217, 242, 255, 1)),
          BarChartRodStackItem(y1 + y2, y1 + y2 + y3, const Color.fromRGBO(25, 80, 143, 1))
        ],
      ),
    ],
  );
}


// Pie Chart Widget
Widget marketSharePieChart(double sizeFactor){
  final defaultStyle =  GoogleFonts.urbanist(fontSize: 0); // Style declared here for reducing lines of code
  return PieChart(
    PieChartData(
      borderData: FlBorderData(
        show: false,
      ),
      sectionsSpace: 0,
      centerSpaceRadius: sizeFactor * 0.045, // Adjust this value to change the size of the center hole
      sections: [
        // Data if needed can be fetched using an API 
        PieChartSectionData(
            color: Colors.blue[900],
            value: 7,
            title: '',
            radius: 30, // Reduced radius
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[800],
            value: 12,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[700],
            value: 18,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[600],
            value: 11,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[500],
            value: 16,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[400],
            value: 3,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[300],
            value: 19,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
        PieChartSectionData(
            color: Colors.blue[200],
            value: 14,
            title: '',
            radius: 30,
            titleStyle: defaultStyle),
      ],
    ),
  );
}