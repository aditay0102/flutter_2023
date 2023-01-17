import 'package:flutter/material.dart';

class todoui extends StatefulWidget {
  const todoui({Key? key}) : super(key: key);

  @override
  State<todoui> createState() => _todouiState();
}

class _todouiState extends State<todoui> {
  void showalertdialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text(
              "Add Text",
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                    autofocus: true,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Raleway",
                    )),
                Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Add",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Raleway",
                              )),
                        )
                      ],
                    ))
              ],
            )));
  }

  Widget mycard(String task) {
    return Card(
        elevation: 5.0,
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        child: Container(
            padding: EdgeInsets.all(5.0),
            child: ListTile(
              title: Text("$task",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: "Raleway",
                  )),
              onLongPress: () {
                print("should get deleted ");
              },
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: showalertdialog,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
        ),
        appBar: AppBar(
          title: Text(
            "My Task",
            style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          mycard("Record a video"),
          mycard("Go to sleep "),
          mycard("Record SQFLITE Video\ninsert\nQuery\nDelete\nUpdate"),
        ])));
  }
}
