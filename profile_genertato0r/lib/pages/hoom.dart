import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _onPress() {
    print("Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.pink,
          title: Text("Fancy you"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("button tapped!"),
            ),
            new IconButton(
              icon: new Icon(Icons.search),
              onPressed: _onPress,
            )
          ],
        ),

        // other properties
        backgroundColor: Colors.grey.shade200,
        body: new Container(
            alignment: Alignment.center,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Hello frmds",
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepOrange,
                  ),
                ),
                new InkWell(
                  child: new Text("Button"),
                  onTap: () => debugPrint("Button Tapped"),
                ),
              ],
            )));
  }
}
