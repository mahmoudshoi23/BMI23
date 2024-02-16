import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultBotton({
  width = double.infinity,
  Color mycolor = Colors.blue,
  required Function myfunction,
  required String text,
}) =>
    Container(
      width: width,

      child: MaterialButton(
        onPressed: myfunction(),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: mycolor,
      ),
    );

Widget defaultTextField({
  required String hintText,
  required Icon putYourIcon,
}) =>
    Container(
      child: TextField(
        decoration: InputDecoration(
          
          prefixIcon: putYourIcon,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
