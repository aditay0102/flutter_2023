import 'package:flutter/material.dart';

class Welcm extends StatelessWidget {
  const Welcm({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.red,
                child: Text("helo"),
              ),
              Container(
                color: Colors.red,
                child: Text("helo"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
