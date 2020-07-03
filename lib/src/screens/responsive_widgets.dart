import 'package:flutter/material.dart';
import 'package:widgets_material/src/views/custom_widgets.dart';

class ResponsiveWidgets extends StatelessWidget {
  const ResponsiveWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Widgets'),
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
            itemSubMenu(titulo: 'Button',icon: Icons.add_to_home_screen,context: context, ruta:'/button2'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'TextField',icon: Icons.add_to_home_screen,context: context, ruta:'/textfield2'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Checkbox',icon: Icons.add_to_home_screen,context: context, ruta:'/checkbox'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Dialog',icon: Icons.add_to_home_screen,context: context, ruta:'/dialog'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Gesture Detectors',icon: Icons.add_to_home_screen,context: context, ruta:'/gesture'),
            Divider( color: Colors.blueAccent[100],),
            itemSubMenu(titulo: 'Passing Data',icon: Icons.add_to_home_screen,context: context, ruta:'/passdata'),
          ],          
        ),
      ),
    );
  }
}