import 'package:flutter/material.dart';
import 'main.dart';
import 'switch.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'switch.dart';
import 'package:yyg/switch.dart';


class Iconco extends StatelessWidget {
  Iconco({@required this.i, @required this.t});
  String t;
  IconData i;
  Widget prop;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          i,
          size: 85.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          t,
          style: tl,
        )
      ],
    );
  }
}

class Rcard extends StatelessWidget {
  Rcard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}

class Rbutton extends StatelessWidget {
  Rbutton({@required this.icon,@required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:  onPressed,
      shape: CircleBorder(),
      fillColor: Colors.blue[500],
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0//size of button
      ),
    );
  }
}

