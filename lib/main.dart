import "package:flutter/material.dart";
import "package:basics/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer
            .purple(), /*GradientContainer(
          Color.fromARGB(255, 156, 162, 171),
          Color.fromARGB(255, 2, 71, 190),
          /*containerColor: [
          Color.fromARGB(255, 202, 213, 219),
          Color.fromARGB(255, 6, 52, 131),
        ]*/
        )*/
      ), // automtatically get constructor function by dart,not needed to mention it explicitly
    ),
  );
}
