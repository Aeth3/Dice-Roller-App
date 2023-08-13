import 'package:flutter/material.dart';
import 'package:test_app/my_app_bar.dart';

import 'custom_bottom_nav_bar.dart';
import 'gradient_container.dart';

GradientContainer myGradientContainer = const GradientContainer(
  colors: [
    Color.fromARGB(255, 180, 59, 15),
    Color.fromARGB(255, 59, 205, 15),
    Color.fromARGB(255, 42, 11, 202),
  ],
);
const myCustomBottomBavBar = CustomBottomNavBar();
final myGradientContainerDark = GradientContainer.dark();
const myAppBar = MyAppBar('Dice Roller App');

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: myAppBar,
        body: myGradientContainerDark,
        bottomNavigationBar: myCustomBottomBavBar,
      ),
    ),
  );
}
