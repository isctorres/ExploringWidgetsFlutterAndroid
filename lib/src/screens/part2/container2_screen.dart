import 'package:flutter/material.dart';

class Container2Screen extends StatelessWidget {
  const Container2Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Container Layout'),),
        body: myContainer3()
      ),
    );
  }

  Widget myContainer1(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.all(10.0),
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.green[100],
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Text('Soy un container :)'),
    );
  }

  Widget myContainer2(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.all(10.0),
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.amber.shade900,
        border: Border.all(
          color: Colors.brown,
          width: 5.0
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Text('Soy un container :)'),
    );
  }

  Widget myContainer3(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.all(10.0),
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
        //color: Colors.blueAccent.shade200,
        border: Border(
          left: BorderSide(
            color:Colors.blue[100],
            width: 15.0
          ),
          top: BorderSide(
            color:Colors.blue[300],
            width: 10.0
          ), 
          right: BorderSide(
            color:Colors.blue[500],
            width: 5.0
          ),
          bottom: BorderSide(
            color:Colors.blue[800],
            width: 3.0
          ),
        ),
        //borderRadius: BorderRadius.circular(10.0)
      ),
      child: Text('Soy un container :)'),
    );
  }
}