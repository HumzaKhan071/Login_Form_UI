import 'package:flutter/material.dart';
import 'package:loginformui/auth.dart';
import 'package:loginformui/main.dart';
import 'package:loginformui/register.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const Auth(),

    );
  }
}
