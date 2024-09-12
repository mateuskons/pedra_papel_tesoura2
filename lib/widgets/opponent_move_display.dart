import 'package:flutter/material.dart';

class OpponentMoveDisplay extends StatelessWidget {
  final String move;

  const OpponentMoveDisplay({Key? key, required this.move}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Jogada do adversário',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Container(
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}