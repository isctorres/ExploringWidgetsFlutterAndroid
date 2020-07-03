import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row-Column Layout Widget'),),
      body: myRow2()
    ); 
  }

  Widget myRow(){
    return  Row(
      children: <Widget>[
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
      ],
    );
  }

  Widget myColumn(){
    return  Column(
      children: <Widget>[
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
        Expanded(child: Icon(Icons.home)),
      ],
    );
  }

  Widget myRow2(){
    return  Row(
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.green
          )
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.yellow,
          )
        ),
      ],
    );
  }

}