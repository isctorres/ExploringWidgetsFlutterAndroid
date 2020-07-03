import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Padding Layout Widget'),),
        body:Column(
          children: <Widget>[
            myPadding(),
            myPadding2()
          ],
        ) 
      ),
    );
  }

  Widget myPadding(){
    return Padding(
      padding: EdgeInsets.all(100.0),
      child: Text('Hola soy Rubensin :)'),
    );
  }

    Widget myPadding2(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text('Hola soy Rubensin :)'),
    );
  }

}