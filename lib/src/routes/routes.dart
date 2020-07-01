import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/screens/HomeScreen.dart';
import 'package:widgets_explorer/screens/ActionSheetScreen.dart';
import 'package:widgets_explorer/screens/TextInputsScreen.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
     '/actionsheet' : (context) => ActionSheetScreen(),
     '/textinputs' : (context) => TextInputsScreen(),
     '/switchandslider' : (context) => ActionSheetScreen(),
     '/segmentcontrol' : (context) => ActionSheetScreen(),
     '/calendar' : (context) => ActionSheetScreen(),
  };
}