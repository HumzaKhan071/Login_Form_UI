import 'package:flutter/material.dart';
import 'package:loginformui/login.dart';
import 'package:loginformui/main.dart';
import 'package:loginformui/register.dart';
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool switchScreen= true;
  void togScreen(){
    setState(() {
      switchScreen = !switchScreen;
    });
  }
  @override
  Widget build(BuildContext context) {

    if(switchScreen){
      return Login(togScreen:togScreen);
    }

    return Register(togScreen:togScreen);
  }
}
