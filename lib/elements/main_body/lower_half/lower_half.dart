import 'package:flutter/material.dart';

Widget lowerHalf(double sizeFactor) {
  return Expanded(
    // Desing layout just laid for future work possibly
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeFactor * 0.02),
      child: Row(
        children: [
          // Product rating plot
          Expanded(
            flex: 451,
            child: Container(
              color: Colors.red,
            )
          ),
          
          // Price segmentation
          Expanded(
            flex: 433,
            child: Container(
              color: Colors.yellow,
            )
          ),

          // Benchmarking
          Expanded(
            flex: 267,
            child: Container(
              color: Colors.green,
            )
          ),
        ],
      ),
    )
  );
}
