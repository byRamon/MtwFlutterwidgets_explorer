import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/screens/HomeScreen.dart';
import 'package:widgets_explorer/screens/ActionSheetScreen.dart';
import 'package:widgets_explorer/screens/TextInputsScreen.dart';
import 'package:widgets_explorer/screens/SliderAndSwitch.dart';
import 'package:widgets_explorer/screens/SegmentedControl.dart';
import 'package:widgets_explorer/screens/Pickers.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
     '/actionsheet' : (context) => ActionSheetScreen(),
     '/textinputs' : (context) => TextInputScreen(),
     '/switchandslider' : (context) => SliderAndSwitch(),
     '/segmentcontrol' : (context) => SegmentedControl(),
     '/pickers' : (context) => Pickers(),
  };
}