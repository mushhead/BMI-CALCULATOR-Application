import 'package:flutter/material.dart';
import 'dart:math';
const tz=TextStyle(fontSize: 38.0, color: Colors.black45);
class Randq{
  List l1=['An investment in knowledge pays the best interest. –  Benjamin Franklin','Education is the passport to the future, for tomorrow belongs to those who prepare for it today. – Malcolm X','Education is what remains after one has forgotten what one has learned in school. – Albert Einstein',];
  String randre()
  {
    int z=Random().nextInt(l1.length);
    l1.shuffle();
    return l1[z];
  }
}