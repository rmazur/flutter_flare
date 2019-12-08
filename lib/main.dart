import 'package:flutter/material.dart';
import "package:flare_flutter/flare_actor.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The MAD logo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.purple,
        body: GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child:
              FlareActor(
                'animations/JackBox.flr', 
                animation: isOpen ? 'Jump' : 'Down'),
        ));
  }
}