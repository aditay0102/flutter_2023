import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwdController = new TextEditingController();
  String _welcomeString = "";
  //  this is used to extract what ever is entered ;

  void _erase() {
    setState(() {
      //   inside here erase and clear inside textfield
      _userController.clear();
      _passwdController.clear();
    });
  }

  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwdController.text.isNotEmpty) {
        _welcomeString = _userController.text;
      } else {
        _welcomeString = "Nothing";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
              alignment: Alignment.topCenter,
              child: new Column(
                children: <Widget>[
                  // image/profile
                  new Image.asset(
                    'images/bird.jpg',
                    width: 190.0,
                    height: 190.0,
                  ),

                  // form

                  new Container(
                    height: 180.0,
                    width: 380.0,
                    color: Colors.white,
                    child: new Column(
                      children: <Widget>[
                        new TextField(
                          controller: _userController,
                          decoration: new InputDecoration(
                            hintText: 'Usernane',
                            icon: const Icon(Icons.person),
                          ),
                        ),
                        new TextField(
                          controller: _passwdController,
                          decoration: new InputDecoration(
                            hintText: 'Password',
                            icon: const Icon(Icons.lock),
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ElevatedButton(
                                onPressed: _showWelcome, child: Text("login")),
                            ElevatedButton(
                                onPressed: _erase, child: Text("clear")),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //              form ends here ----------------------------
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text("Welcome,$_welcomeString",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19.3,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  )
                ],
              )),
        ));
  }
}
