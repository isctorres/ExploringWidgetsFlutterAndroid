import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Button',
      home: Scaffold(
        appBar: AppBar(title: Text('Responsive Button'),),
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
        RaisedButton(
          child: Text('Button'),
          onPressed: (){
            setState(() {
              _textString = "Y no haré travesuras";
            });
          }
        )
      ],
    );
  }
}