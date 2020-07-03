import 'package:flutter/material.dart';

 Widget itemMenu({String titulo, IconData icon, BuildContext context, String ruta}){
    return ListTile(
              title: Text(titulo),
              trailing: Icon(Icons.contacts),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, ruta);
              },
            );
  }

Widget itemSubMenu({String titulo, IconData icon, BuildContext context, String ruta}){
    return ListTile(
              title: Text(titulo),
              leading: Container(
                padding: EdgeInsets.all(5.0),
                child: Icon(icon),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100]
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, ruta);
              },
            );
  }



