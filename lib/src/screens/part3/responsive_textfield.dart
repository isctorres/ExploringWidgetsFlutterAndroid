import 'package:flutter/material.dart';

class ResponsiveTextField extends StatelessWidget {
  const ResponsiveTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Responsive TextField'),),
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

  String _textString = 'Hola soy Rubensin :)';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _textString,
          style: TextStyle(fontSize: 20.0)
        ),
        TextField(
          onChanged: (text){
            setState(() {
              _textString = text;
            });
          }
        )
      ],
    );
  }
}