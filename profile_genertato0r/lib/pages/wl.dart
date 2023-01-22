import 'package:flutter/material.dart';

class Welcm extends StatelessWidget {
  const Welcm({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(child: Text("This is my first app by myself")),
    );
  }
}
