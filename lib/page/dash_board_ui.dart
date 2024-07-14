import 'package:dashboard_ui/elements/left_app_bar.dart';
import 'package:dashboard_ui/elements/main_body/main_body.dart';
import 'package:flutter/material.dart';

class DashboardUI extends StatelessWidget {
  final double sizeFactor; /* This double will be responsible for handling responsiveness scale across elements
                              Implemented by (sizeFactor * desiredSize) */
  const DashboardUI({super.key, required this.sizeFactor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 250, 1),
      body: Row(
        children: [
          // App Bar like structure on the left most of the screen
          customAppBar(sizeFactor),

          // Rest of the body
          mainBody(sizeFactor),
        ],
      ),
    );
  }
}
