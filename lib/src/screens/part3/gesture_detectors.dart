import 'dart:math';

import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Gesture Detector'),),
        body: MyWidget()
      )
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({Key key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'Hola soy Rubensin :)',
        style: TextStyle( 
          fontSize: 30.0,
          color: textColor
        ),
      ),
      onTap: (){
        setState(() {
          int randomHexColor = Random().nextInt(0xFFFFFF);
          int opaqueColor = 0xFF000000 + randomHexColor;
          textColor = Color(opaqueColor);
        });
      },
    );
  }
}