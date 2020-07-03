import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Container(
        //margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            gradient: new LinearGradient(
            colors: [Colors.green[100], Colors.blueAccent],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ) 
        ),
        /*decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10.0)
        ),*/
        alignment: Alignment.center,
        //color: Colors.green[100],
        child: FlutterLogo(size: 100.0,)
      ),
    );
  }
}