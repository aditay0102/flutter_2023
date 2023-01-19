import 'package:flutter/material.dart';

void main() {
  runApp(new Material(
    color: Colors.blue,
    child: Center(
      child: new Text("hello  Material!",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
              fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
    ),
  )
/*
    new Center(
        child: new Text(
      'hello there',
      textDirection: TextDirection.ltr,
    )),
    */
      );
}
