import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final int playerScore;
  final int opponentScore;

  const ScoreDisplay({
    Key? key,
    required this.playerScore,
    required this.opponentScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Jogador: $playerScore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Adversário: $opponentScore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}