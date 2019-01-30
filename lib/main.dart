import 'package:desafio_restaurante/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          cursorColor: Color(0xffFFB600),
          textTheme: TextTheme(
            title: TextStyle(color: Color(0xffFFB600)),
            display1: TextStyle(
                color: Color(0xffFFB600),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            display2: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            display3: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      home: HomePage(),
    );
  }
}
