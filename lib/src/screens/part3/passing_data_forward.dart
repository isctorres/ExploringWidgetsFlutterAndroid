import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_material/src/screens/part3/passing_data_back.dart';

class PassingDataForward extends StatelessWidget {
  const PassingDataForward({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('First Page'),),
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

  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'Go to second screen',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () async {
              String textToSend = textFieldController.text;
              final result = await Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => PassingDataBack(text: textToSend)
                )
              );
              setState(() {
                textFieldController.text = result;
              });
            },
          )
      ],
    );
  }
}