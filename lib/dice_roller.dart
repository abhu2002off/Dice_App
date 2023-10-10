import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = "assets/dice-images/dice-1.png";
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      //it causes to re-render build method and update the UI after setting state of the class
      //activeDiceImage = "assets/dice-images/dice-4.png";
      currentDiceRoll = randomizer.nextInt(6) + 1; // 0 to 5
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/dice-images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 10.0),
                foregroundColor: Colors.black87,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll  Dice")),
      ],
    );
  }
}
