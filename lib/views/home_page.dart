import 'package:flutter/material.dart';
import 'dart:math';
import '../widgets/player_choice_button.dart';
import '../widgets/opponent_move_display.dart';
import '../widgets/round_result_display.dart';
import '../widgets/score_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int playerScore = 0;
  int opponentScore = 0;
  String opponentMove = '???';
  String roundResult = '';

  String _generateOpponentMove() {
    List<String> moves = ['Pedra', 'Papel', 'Tesoura'];
    int randomIndex = Random().nextInt(3);
    return moves[randomIndex];
  }

  void _playerChoice(String playerMove) {
    String opponentMove = _generateOpponentMove();

    setState(() {
      this.opponentMove = opponentMove;
      if (playerMove == opponentMove) {
        roundResult = 'Empate!';
      } else if ((playerMove == 'Pedra' && opponentMove == 'Tesoura') ||
          (playerMove == 'Tesoura' && opponentMove == 'Papel') ||
          (playerMove == 'Papel' && opponentMove == 'Pedra')) {
        playerScore++;
        roundResult = 'Você venceu!';
      } else {
        opponentScore++;
        roundResult = 'Adversário venceu!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedra -- Papel -- Tesoura'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sua jogada',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlayerChoiceButton(
                move: 'Pedra',
                onTap: () => _playerChoice('Pedra'),
              ),
              PlayerChoiceButton(
                move: 'Papel',
                onTap: () => _playerChoice('Papel'),
              ),
              PlayerChoiceButton(
                move: 'Tesoura',
                onTap: () => _playerChoice('Tesoura'),
              ),
            ],
          ),
          SizedBox(height: 40),
          OpponentMoveDisplay(move: opponentMove),
          SizedBox(height: 40),
          RoundResultDisplay(result: roundResult),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.deepPurple,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ScoreDisplay(
            playerScore: playerScore,
            opponentScore: opponentScore,
          ),
        ),
      ),
    );
  }
}