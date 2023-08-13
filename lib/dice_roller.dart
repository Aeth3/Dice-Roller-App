import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  // Long version

  // void rollDice() {
  //   var randomDice = Random().nextInt(6) + 1;
  //   if (randomDice == 1) {
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-1.png';
  //     });
  //   } else if (randomDice == 2) {
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-2.png';
  //     });
  //   } else if (randomDice == 3) {
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-3.png';
  //     });
  //   } else if (randomDice == 4) {
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-4.png';
  //     });
  //   } else if (randomDice == 5) {
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-5.png';
  //     });
  //   } else{
  //     setState(() {
  //       activeDiceImage = 'assets/images/dice-6.png';
  //     });
  //   }
  // }

  // Short version

  // void rollDice(){
  //   var diceRoll = Random().nextInt(6)+1;
  //   setState(() {
  //     activeDiceImage = 'assets/images/dice-$diceRoll.png';
  //   });
  // }

  // Very Short Version

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white),
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 28),
            ))
      ],
    );
  }
}
