import 'package:flutter/material.dart';

class Welcm extends StatelessWidget {
  const Welcm({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new Text(
            "Item 1",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18),
          ),
          new Text(
            "Item 2",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18),
          ),
          const Expanded(
            child: const Text("Item3"),
          )
        ]));
  }
}
