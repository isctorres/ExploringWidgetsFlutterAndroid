import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Center Layout Widget'),),
        body: myAlign5()
      ),
    );
  }

  Widget myCenter(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hola soy Rubensin :)',
            style: TextStyle(fontSize: 30.0),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('Boton 1'),
            color: Colors.amber,
            elevation: 4.0,
            splashColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget myAlign1(){
    return Align(
      alignment: Alignment(-1,-1),
      child: Text('Soy un Align -1,-1'),
    );
  }

  Widget myAlign2(){
    return Align(
      alignment: Alignment(0,-1),
      child: Text('Soy un Align 0,-1'),
    );
  }

  Widget myAlign3(){
    return Align(
      alignment: Alignment(1,-1),
      child: Text('Soy un Align 0,-1'),
    );
  }

  Widget myAlign4(){
    return Align(
      alignment: Alignment(0,1),
      child: Text('Soy un Align 0,-1'),
    );
  }

  Widget myAlign5(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Text('Soy un Align Center-Left'),
    );
  }
}