import 'package:flutter/material.dart';
import 'package:widgets_material/src/views/custom_widgets.dart';

class ExploringWidgets extends StatelessWidget {
  const ExploringWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exploring Widgets'),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[300],
        ),
        child: Column(
          children: <Widget>[
            itemSubMenu(titulo: 'Container',icon: Icons.add_to_home_screen,context: context, ruta:'/container'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Text',icon: Icons.add_to_home_screen,context: context, ruta:'/text'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Button',icon: Icons.add_to_home_screen,context: context, ruta:'/button'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'TextField',icon: Icons.add_to_home_screen,context: context, ruta:'/textfield'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'ListView',icon: Icons.add_to_home_screen,context: context, ruta:'/listview'),
            Divider( color: Colors.blueAccent[100],),
          ],          
        ),
      ),
    );
  }
}