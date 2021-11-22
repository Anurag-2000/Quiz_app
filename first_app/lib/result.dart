import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhase {
    var resultText = 'You finished it';
    if (resultScore <= 8) {
      resultText = '\nYou are Doodh ka Dhula\n\n\n\n\n';
    } else if (resultScore <= 15) {
      resultText = '\nyou are Normal\n\n\n\n\n';
    } else if (resultScore <= 20) {
      resultText = '\nyou are Creepy\n\n\n\n\n';
    } else {
      resultText = '\nGet yourself a Psychiatrist\n!!!NOW!!!\n\n\n\n\n';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton.icon(
            onPressed: resetQuiz,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            label: Text(
              'Retake',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.replay,
              color: Colors.white,
            ),
            textColor: Colors.white,
            splashColor: Colors.white,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
