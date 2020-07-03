import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Stack Layout Widget'),),
        body: myStack3()
        ) 
      );
  }

  Widget myStack(){
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Image.asset('assets/images.png'),
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'Maestria :)',
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ],
    );
  }

  Widget myStack2(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          color: Colors.green
        ),
        Container(
          color: Colors.blue,
          height: 300.0,
          width: 300.0,
        ),
        Container(
          color: Colors.orange,
          height: 150.0,
          width: 150.0,
        )
      ],
    );
  }

  Widget myStack3(){
    return IndexedStack(
      index: 2,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          color: Colors.green
        ),
        Container(
          color: Colors.blue,
          height: 300.0,
          width: 300.0,
        ),
        Container(
          color: Colors.orange,
          height: 150.0,
          width: 150.0,
        )
      ],
    );
  }
}