import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          myTextField1(),
          myTextField2(),
          TextField(
            textAlign: TextAlign.center,
            textCapitalization: TextCapitalization.words,            
            decoration: InputDecoration(
              hintText: 'Texto Centrado',
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.go,
          ),
          TextField(
            obscureText: true,
            cursorColor: Colors.redAccent,
            cursorRadius: Radius.circular(15.0),
            cursorWidth: 15.0,
            decoration: InputDecoration(
              hintText: 'Campo de contraseña',
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.go,
          ),
        ],
      ),
    );
  }

  Widget myTextField1() {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Aqui va el texto'
      ),
    );
  }

  Widget myTextField2(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Boton de ejemplo',
        hintText: 'Introduce el valor correcto',
        prefixIcon: Icon(Icons.supervised_user_circle),
        //fillColor: Colors.orange[100],
      ),
    );
  }
}