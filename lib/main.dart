import 'package:dashboard_ui/page/dash_board_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double responsiveScale = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // Disabled banner 
      home: DashboardUI(sizeFactor: responsiveScale), // Pass responisveScale [Helps with responsive design]
    );
  }
}
