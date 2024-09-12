import 'package:flutter/material.dart';

class RoundResultDisplay extends StatelessWidget {
  final String result;

  const RoundResultDisplay({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}