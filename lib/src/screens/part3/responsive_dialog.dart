import 'package:flutter/material.dart';

class ResponsiveDialog extends StatelessWidget {
  const ResponsiveDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Responsive Dialog'),),
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

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Button'),
      onPressed: (){
        _showAlertDialog();
      }
    );
  }

  void _showAlertDialog(){
    Widget okButton = FlatButton(
      onPressed: (){
        Navigator.pop(context);
      }, 
      child: Text('Ok')
    );

    AlertDialog alert = AlertDialog(
      title: Text("Título del Dialogo"),
      content: Text("Aqui va el contenido del diálogo"),
      actions: <Widget>[
        okButton
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      }
    );
  }
}