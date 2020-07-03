import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Button Widget'),),
        body:Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){},
              child: Text('Boton 1'),
              color: Colors.amber,
              elevation: 4.0,
              splashColor: Colors.blue,
            ),
            myMaterialButton(),
            RaisedButton(
              child: Text('Boton con esquinas redondeadas'),
              color: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {},
            ),
            RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text('Boton con gradiente'),
                ),
              ),
          ],
        ) 
      ),
    );
  }

  Widget myMaterialButton(){
    return MaterialButton(
      elevation: 20.0,
      splashColor: Colors.blueGrey,
      child: Text('Boton Material'),
      onPressed: (){}
    );
  }
}