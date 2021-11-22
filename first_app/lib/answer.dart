import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String answerText;
  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandeler,
          splashColor: Colors.amber,
        ));
  }
}
