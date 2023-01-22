import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "welcome back",
    home: new Welcome(),
  ));
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue,
      child: Center(
        child: new Text("hello  Material!",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
      ),
    );
    ;
  }
}
