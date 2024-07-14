import 'package:dashboard_ui/elements/main_body/upper_half/consumer_success_widget.dart';
import 'package:dashboard_ui/elements/main_body/upper_half/hero_summary_widget.dart';
import 'package:dashboard_ui/elements/main_body/upper_half/market_cap_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Widget for the upper half of the main body with responsiveness based on sizeFactor
Widget upperHalf(double sizeFactor) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeFactor * 0.02),
      child: Row(
        children: [
          // Hero Summary Widget (5 Widgets Containing Hero Brand, Hero Product, Executive Summary, Competitor Benchmarking, Pricing Insights)
          heroSummary(sizeFactor),
          
          Gap(sizeFactor * 0.0005),

          // Consumer Success Factor Widget
          consumerSuccess(sizeFactor),

          Gap(sizeFactor * 0.0005),

          // Market Cap Widget
          marketCap(sizeFactor),
        ],
      ),
    ),
  );
}
