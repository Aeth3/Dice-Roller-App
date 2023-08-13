import 'package:flutter/material.dart';
import 'package:test_app/dice_roller.dart';
import 'package:test_app/styled_text.dart';

const topRight = Alignment.topRight;
const bottomLeft = Alignment.bottomLeft;
const styledText = StyledText('Hello World');

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  GradientContainer.dark({super.key})
      : colors = [Colors.black, Colors.black87, Colors.black54];
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: colors, begin: topRight, end: bottomLeft)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
