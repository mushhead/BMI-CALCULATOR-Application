import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yyg/Sps/splscreen.dart';
import 'package:yyg/m2.dart';
import 'card.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'switch.dart';
import 'package:yyg/switch.dart';
import 'm2.dart';
import 'r.dart';
import 'calculate.dart';
const inactive= Colors.deepOrange;
const active=Colors.deepOrange;
const inactive1=Colors.pink;
const active1=Colors.blue;
Color in1=inactive1;

int h11=180;
int w11 = 50;
int a=18;
const tl=TextStyle(fontSize: 18.0, color:Colors.white);
enum GenType{
  male,
  female,
}
void main()
{

  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        primaryColor:Colors.deepOrange
        // scaffoldBackgroundColor: Color(0xFF0A0E21),
        ,scaffoldBackgroundColor: Colors.deepOrangeAccent
      ),
      home: SplashSreen(),
      // routes: {
      //   '/': (context)=>i(),
      //   '/f':(context)=>ScanScreen(),
      //   '/s':(context)=>Result(calr: c1.calc(),Tr: c1.getT(),datar: c1.data(),),
      // },
    );
  }
}
class i extends StatefulWidget {

  @override
  _iState createState() => _iState();
}

class _iState extends State<i> {
  int height=180;
  int weight = 50;
  int Gen;
  Color male=active;
  Color female=active;
  void ch(GenType s)
  {
    // male=s==GenType.male?active
    if(s==GenType.male)
    {
      if(male==active)
      {
        male=Colors.blue;
        female=active;
      }
      else
      {
        male=active;
      }
    }
    else if(s==GenType.female)
    {
      if (female==active)
      {
        female=Colors.pink;
        male=active;
      }
      else
      {
        female=active;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Rcard(
                        colour: male,
                        cardChild: Iconco(
                          i: FontAwesomeIcons.mars,
                          t: "MALE",
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          ch(GenType.male);
                        });

                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Rcard(
                        colour: female,
                        cardChild:
                        Iconco(i: FontAwesomeIcons.venus, t: "FEMALE"),
                      ),
                      onTap: (){
                        setState(() {
                          ch(GenType.female);
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Rcard(
                        colour: Colors.deepOrange,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[SizedBox(height: 5.0,),Text("HEIGHT",style: tl,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(height.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
                                Text(" CM",style: tl,)
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                                thumbColor: Color(0xFFEB1555),
                                activeTrackColor: Colors.blue,
                                overlayColor: Color(0x52EB1555),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 100.0,
                                max: 200.0,

                                inactiveColor: Colors.white,
                                onChanged: (double newValue){
                                  setState(() {
                                    height=newValue.round();
                                  });
                                  print(newValue);
                                },

                              ),
                            ),
                          ],
                        ),
                      )),

                ],
              ),
            ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //           child: Rcard(
            //             cardChild: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text("WEIGHT",style: tl,),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   crossAxisAlignment: CrossAxisAlignment.baseline,
            //                   textBaseline: TextBaseline.ideographic,
            //                   children: [
            //                     Text(w.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
            //                     Text("KG",style: tl,),
            //
            //                   ],
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: <Widget>[
            //                     // Rbutton(icon: FontAwesomeIcons.plus,onPressed: (){
            //                     //   setState(() {
            //                     //     w++;
            //                     //   });
            //                     // },),
            //                     FloatingActionButton(child: Icon(FontAwesomeIcons.plus,color: Colors.white,),backgroundColor: Colors.blue[500],onPressed: (){setState(() {
            //                       w++;
            //                     });}),
            //                     SizedBox(
            //                       width: 20.0,
            //                     ),
            //                     Rbutton(icon: FontAwesomeIcons.minus,onPressed: (){
            //                       setState(() {
            //                         w--;
            //                       });
            //                     },),
            //                   ],
            //                 )
            //
            //               ],
            //             ),
            //             colour: Color(0xFF1D1E33),
            //           ),
            //           ),
            //  Expanded(
            //       child: Rcard(colour: Color(0xFF1D1E33),cardChild: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text("AGE",style: tl,),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.baseline,
            //             textBaseline: TextBaseline.alphabetic,
            //             children: [
            //               Text(a.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
            //               Text("yrs",style: tl,),
            //             ],
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: <Widget>[
            //
            //               FloatingActionButton(child: Icon(FontAwesomeIcons.plus,color: Colors.white,)
            //                   ,backgroundColor: Colors.blue[500],onPressed: (){setState(() {
            //                     a++;
            //                   });}),
            //               SizedBox(
            //                 width: 20.0,
            //               ),
            //               Rbutton(icon: FontAwesomeIcons.minus,onPressed: (){
            //                 setState(() {
            //                   a--;
            //                 });
            //               },),
            //             ],
            //           )
            //
            //         ],
            //       ),)),
            //
            //     ],
            //   ),
            // ),,
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Rcard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT",style: tl,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(weight.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
                              Text(" KG",style: tl,),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Rbutton(icon: FontAwesomeIcons.plus,onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              ),

                              SizedBox(
                                width: 15.0,
                              ),
                              Rbutton(icon: FontAwesomeIcons.minus,onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              ),
                            ],
                          )

                        ],
                      ),
                      colour: Colors.deepOrange,
                    ),
                  ),
                  Expanded(child: Rcard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: tl),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(a.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
                            Text(" YRS",style: tl,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Rbutton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                a++;
                              });
                            },),
                            SizedBox
                              (
                              width: 15.0,
                            ),
                            Rbutton(icon: FontAwesomeIcons.minus,onPressed: (){
                              setState(() {
                                a--;
                              });
                            },
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: Colors.deepOrange,
                  ))
                ],
              ),
            ),

            // GestureDetector(
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     //   return ScanScreen();
            //     Navigator.pushNamed(context, '/f');
            //   },
            //   child: Container(
            //       height: 80.0,
            //       width: double.infinity,
            //       color: in1,
            //       child: Center(
            //           child: Text(
            //             "CALCULATE",
            //             style: TextStyle(color: Colors.white, fontSize: 20.0),
            //           ))),
            // ),

            GestureDetector(
              onTap: () {
                CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);

                Navigator.push(

                  context,

                  MaterialPageRoute(
                      builder: (context) => Result(bmiResult: calc.calculateBMI(),resultText: calc.getResult(),interpretation: calc.getInterpretation(),)
                  ),

                );
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   Result();
                // }
                // ),);
              },
              child: Container(
                  height: 80.0,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10.0),
                  color: Colors.greenAccent,
                  child: Center(
                      child: Text(
                        "Calculate BMI",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ))),
            ),
            // FlatButton(
            // color: Colors.blue,onPressed: (){
            //
            //  setState(() {
            //    a++;
            //  });
            // }, child: Rcard(cardChild: Text(a.toString()),))

          ],
        ));
  }
}
