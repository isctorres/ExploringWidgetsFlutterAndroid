import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Gridview Layout Widget'),),
        body: myGridview()
      )
    );
  }
  
  Widget myGridview(){
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(50, (index) {
          return Container(
            child: Card(
              color: Colors.blue
            )
          );
        }
      ),
    );
  }
}