import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answer,
    required this.onSelected,
    super.key,
  });

  final String answer;
  final void Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onSelected,
      style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
      child: Text(answer, textAlign: TextAlign.center),
    );
  }
}
