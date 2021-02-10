import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.white;

  void changeRandomColor() {
      setState(() => color = Color(Random().nextInt(0xffffffff)).withAlpha(0xff));
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => changeRandomColor(),
      child: Scaffold(
        backgroundColor:  color,
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SafeArea(
          child: Center(
            child:  Text('Hey there') ,
          ),
        ),
      ),
    );
  }
}
