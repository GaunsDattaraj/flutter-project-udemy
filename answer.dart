import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answers;
  Answer(this.selectHandler, this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answers),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
        ));
  }
}
