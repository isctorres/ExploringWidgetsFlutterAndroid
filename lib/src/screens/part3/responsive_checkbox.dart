import 'package:flutter/material.dart';

class ResponsiveCheckbox extends StatelessWidget {
  const ResponsiveCheckbox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Responsive Checkbox'),),
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

  bool _checkedValue = false;
  
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('Opción del Checkbox'),
      value: _checkedValue, 
      onChanged: (newValue){
        setState(() {
          _checkedValue = newValue;
          print(_checkedValue);
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}