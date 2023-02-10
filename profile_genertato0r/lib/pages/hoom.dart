import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _moneyCounter = 0;

  void _rainMoney() {
    // immportant  - setstate is called each time we need to update the UI
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            appBar: AppBar(
              title: Text("AppBAr"),
              backgroundColor: Colors.pink,
            ),
            body: new Container(
                child: new Column(
              children: <Widget>[
                Center(
                  child: new Text(
                    "Get Rich! ",
                    style: new TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 29),
                  ),
                ),
                new Expanded(
                    child: new Center(
                        child: new Text(
                  "$_moneyCounter",
                  style: new TextStyle(
                    color:
                        _moneyCounter > 2000 ? Colors.red : Colors.greenAccent,
                    fontSize: 46.9,
                    fontWeight: FontWeight.w800,
                  ),
                ))),
                new Expanded(
                    child: new Center(
                  child: new TextButton(
                    onPressed: () => _rainMoney(),
                    child: new Text(
                      "Let It Rain!",
                      style: TextStyle(fontSize: 19.9),
                    ),
                  ),
                ))
              ],
            ))));
  }
}
