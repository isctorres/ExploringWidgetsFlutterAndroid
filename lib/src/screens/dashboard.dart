import 'package:flutter/material.dart';
import 'package:widgets_material/src/views/custom_widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exploring Widgets'),
        backgroundColor: Colors.blueAccent[100],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Rubén Torres Frias'), 
              accountEmail: Text('isctorres@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: new NetworkImage("http://i.pravatar.cc/300"),
              ),
            ),
            itemMenu(titulo: 'Exploring Widgets (Part 1)',icon: Icons.add_to_home_screen,context: context, ruta:'/part1'),
            itemMenu(titulo: 'Exploring Layouts (Part 2)',icon: Icons.computer,context: context, ruta:'/part2'),
            itemMenu(titulo: 'Responsive Widgets (Part 3)',icon: Icons.confirmation_number,context: context, ruta:'/part3')
          ],
        ),
      ),
    );
  }
}