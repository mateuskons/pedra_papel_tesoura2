import 'package:flutter/material.dart';

class PlayerChoiceButton extends StatelessWidget {
  final String move;
  final VoidCallback onTap;

  const PlayerChoiceButton({
    Key? key,
    required this.move,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          shape: BoxShape.circle,
        ),
        width: 100,
        height: 100,
        child: Center(
          child: Text(
            move,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}