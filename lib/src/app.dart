import 'package:flutter/material.dart';

import 'package:widgets_material/src/routes.dart';
import 'package:widgets_material/src/screens/dashboard.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getRoutes(),
      title: 'Wigets Flutter',
      home: Dashboard(),
    );
  }
}