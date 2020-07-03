import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Text Widget')),
      body: myText(),
    );
  }

  Widget myText(){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text("Hello I´m Rubensin :)", 
        style: TextStyle(
          decorationColor: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 15.0,
          color: Colors.redAccent,
          //decoration: TextDecoration.overline
          //decoration: TextDecoration.underline
          decoration: TextDecoration.lineThrough
        ),
      )
    );
  }
}