import 'package:flutter/material.dart';
import 'main.dart';
import 'r.dart';
import 'card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'r.dart';
import 'calculate.dart';
const tl=TextStyle(fontSize: 18.0, color: Color(0xFFD8E398));


class Result extends StatelessWidget {
  Result({@required this.bmiResult,@required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF0A0E21),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Container(
            child: Text("Your Results",textAlign: TextAlign.center,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0)),
          ),
        ),
        Expanded(
          flex: 5,
          child: Rcard(
            cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(resultText,style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,
                color: resultText=="Normal"?Color(0xFF24D876):Colors.red)),
            Text(bmiResult,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100.0),
          ),
          Align(alignment: Alignment.center,child: Text(interpretation,style: TextStyle(fontSize: 22.0),textAlign: TextAlign.justify,))
          ],
        ),
        colour: Color(0xFF1D1E33),
      ),
    ),
    GestureDetector(
    onTap: () {
    Navigator.pop(context);
    },
    child: Container(
    height: 80.0,
    width: double.infinity,
    margin: EdgeInsets.only(top: 10.0),
    color: Colors.greenAccent,
    child: Center(
    child: Text(
    "Calculate Again",
    style: TextStyle(color: Colors.white, fontSize: 20.0),
    ))),)
    ],
    ),
    ),
    );
  }
}
