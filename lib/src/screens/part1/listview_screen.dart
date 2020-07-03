import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  
  const ListViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView Widget'),),
        body: myListView4()
      );
  }

  Widget myListView1(){
    return ListView.builder(
      padding: EdgeInsets.all(15.0),
      itemExtent: 30.0, // Tamaño del renglon
      itemBuilder: (BuildContext context, int index){
        return Text('Item $index');
      }
    );
  }

  Widget myListView2(){
    return ListView.builder(
      //scrollDirection: Axis.horizontal, // marca error al usarlo con builder
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Item $index'),
          subtitle: Text('subtitulo'),
          onTap: (){},
        );
      }
    );
  }

  Widget myListView3(){
    return ListView(
      reverse: true,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Item 1'),
          subtitle: Text('subtitulo'),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Item 2'),
          subtitle: Text('subtitulo'),
          onTap: (){},
        )
      ],
    );
  }

  Widget myListView4(){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
       Container(
         color: Colors.red[200],
         width: 100.0,
       ),
      Container(
         color: Colors.amberAccent,
         width: 100.0,
       )
      ],
    );
  }
}