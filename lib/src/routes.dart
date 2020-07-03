import 'package:flutter/material.dart';

import 'package:widgets_material/src/screens/exploring_widgets.dart';
import 'package:widgets_material/src/screens/layouts.dart';
import 'package:widgets_material/src/screens/part1/button_screen.dart';
import 'package:widgets_material/src/screens/part1/container_screen.dart';
import 'package:widgets_material/src/screens/part1/listview_screen.dart';
import 'package:widgets_material/src/screens/part1/text_screen.dart';
import 'package:widgets_material/src/screens/part1/textefield_screen.dart';
import 'package:widgets_material/src/screens/part2/center_screen.dart';
import 'package:widgets_material/src/screens/part2/container2_screen.dart';
import 'package:widgets_material/src/screens/part2/gridview_screen.dart';
import 'package:widgets_material/src/screens/part2/padding_screen.dart';
import 'package:widgets_material/src/screens/part2/rowcolumn_screen.dart';
import 'package:widgets_material/src/screens/part2/stack_screen.dart';
import 'package:widgets_material/src/screens/part3/gesture_detectors.dart';
import 'package:widgets_material/src/screens/part3/passing_data_forward.dart';
import 'package:widgets_material/src/screens/part3/responsive_button.dart';
import 'package:widgets_material/src/screens/part3/responsive_checkbox.dart';
import 'package:widgets_material/src/screens/part3/responsive_dialog.dart';
import 'package:widgets_material/src/screens/part3/responsive_textfield.dart';
import 'package:widgets_material/src/screens/responsive_widgets.dart';

Map<String,WidgetBuilder> getRoutes(){

  return <String,WidgetBuilder>{
    '/part1'      : (BuildContext context) => ExploringWidgets(),
    '/container'  : (BuildContext context) => ContainerScreen(),
    '/text'       : (BuildContext context) => TextScreen(),
    '/button'     : (BuildContext context) => ButtonScreen(),
    '/textfield'  : (BuildContext context) => TextFieldScreen(),
    '/listview'   : (BuildContext context) => ListViewScreen(),
    '/part2'      : (BuildContext context) => Layouts(),
    '/padding'    : (BuildContext context) => PaddingScreen(),
    '/center'     : (BuildContext context) => CenterScreen(),
    '/container2' : (BuildContext context) => Container2Screen(),
    '/rowcolumn'  : (BuildContext context) => RowColumnScreen(),
    '/stack'      : (BuildContext context) => StackScreen(),
    '/gridview'   : (BuildContext context) => GridViewScreen(),
    '/part3'      : (BuildContext context) => ResponsiveWidgets(),
    '/button2'    : (BuildContext context) => ResponsiveButton(),
    '/textfield2' : (BuildContext context) => ResponsiveTextField(),
    '/checkbox'   : (BuildContext context) => ResponsiveCheckbox(),
    '/dialog'     : (BuildContext context) => ResponsiveDialog(),
    '/gesture'    : (BuildContext context) => MyGestureDetector(),
    '/passdata'   : (BuildContext context) => PassingDataForward(),
  };

}