import 'dart:math';

import 'package:dice/widgets/styled_text.dart';
import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 4;

  void rollDiceHandler() {
    var diceRoll = randomize.nextInt(6) + 1;
    setState(() {
      diceNumber = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNumber.png', width: 200,),
        const SizedBox(width: 50),
        TextButton(
          onPressed: rollDiceHandler,
          child: const StyledText(title: 'Roll Dice'),
        ),
      ],
    );
  }
}
