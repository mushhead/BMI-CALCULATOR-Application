import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:yyg/main.dart';
import 'package:yyg/main.dart';
import 'package:flutter/services.dart';
import 'package:yyg/randomquotes.dart';
import 'package:yyg/card.dart';
const tz=TextStyle(fontSize: 20.0, color: Colors.white);

class SplashSreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashSreen> {
  Randq r1=Randq();
  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToHome();
          } else {
            _navigateToLogin();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => i()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => i()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Opacity(opacity: 0.5, child: Image.asset("images/bg.png")),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height:340.0),
                  Container(
                      // padding: EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 50.0),
                      child:Shimmer.fromColors(
                          baseColor: Colors.lightGreen,
                          highlightColor: Colors.indigo,
                          child: Text(
                            'COMMENCE',
                            style: TextStyle( fontSize: 40.0,fontWeight:FontWeight.bold,shadows: <Shadow>[Shadow(
                              blurRadius: 20.0,color: Colors.black38,offset: Offset.fromDirection(120,12),
                            )]),
                          )
                      )

                  ),
                  SizedBox(height:100.0),
                  Container(
                    padding: EdgeInsets.all(20.0),
                  child: Text(r1.randre(),style: tz,),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black38,
                 ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
