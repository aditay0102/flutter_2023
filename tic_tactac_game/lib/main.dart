import 'package:flutter/material.dart';
import 'package:tic_tactac_game/todoui.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TODO",
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.purple,
      ),
      home: todoui(),
    );
  }
}
