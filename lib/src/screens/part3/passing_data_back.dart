import 'package:flutter/material.dart';

class PassingDataBack extends StatefulWidget {
  
  final String text;
  const PassingDataBack({Key key, @required this.text}) : super(key: key);

  @override
  _PassingDataBackState createState() => _PassingDataBackState(text);
}

class _PassingDataBackState extends State<PassingDataBack> {

  final String text;
  TextEditingController textFieldController = TextEditingController();
  _PassingDataBackState(this.text){
    textFieldController.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Second Screen'),),
        body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),

          RaisedButton(
            child: Text(
              'Send text back',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              String textToSendBack = textFieldController.text;
              Navigator.pop(context, textToSendBack);
            },
          )
          ],
        )
      )
    );
  }
}