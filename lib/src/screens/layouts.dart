import 'package:flutter/material.dart';
import 'package:widgets_material/src/views/custom_widgets.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
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
            itemSubMenu(titulo: 'Padding',icon: Icons.add_to_home_screen,context: context, ruta:'/padding'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Center',icon: Icons.add_to_home_screen,context: context, ruta:'/center'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Container',icon: Icons.add_to_home_screen,context: context, ruta:'/container2'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Row-Column',icon: Icons.add_to_home_screen,context: context, ruta:'/rowcolumn'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Stack',icon: Icons.add_to_home_screen,context: context, ruta:'/stack'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'GridView',icon: Icons.add_to_home_screen,context: context, ruta:'/gridview'),
            Divider( color: Colors.blueAccent[100],),
          ],          
        ),
      ),
    );
  }
}