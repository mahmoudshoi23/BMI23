import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultBotton(
    { width = double.infinity,
      Color mycolor = Colors.blue,
      required Function() myfunction ,
      required String text,
    }) {

  return Container(
    width: width,
    color: mycolor,
    child: FloatingActionButton(
      onPressed: myfunction,
      child: Text(text),
    ),
  );
}
