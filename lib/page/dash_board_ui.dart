import 'package:dashboard_ui/elements/major_elements.dart';
import 'package:dashboard_ui/elements/minor_elements.dart';
import 'package:flutter/material.dart';

class DashboardUI extends StatefulWidget {
  const DashboardUI({super.key});

  @override
  State<DashboardUI> createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 250, 1),
      body: Row(
        children: [
          customAppBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    linesAndText(),
                    // Upper Half
                    upperHalf(),

                    // Bottom Half
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
