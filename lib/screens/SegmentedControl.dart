import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key}) : super(key: key);

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int valor = 0;
  final Map<int, Widget> _items = const<int, Widget>{
    0:Text('Indigo'),
    1:Text('Teal'),
    2:Text('Cyan'),
  };
  final Map<int, Widget> _icons = const <int, Widget>{
    0: Center(child: FlutterLogo(colors: Colors.indigo, size: 200,),),
    1: Center(child: FlutterLogo(colors: Colors.teal, size: 200,),),
    2: Center(child: FlutterLogo(colors: Colors.cyan, size: 200,),)
  };
  int _currentSegment = 0;
  void onValueChanged(int newValue){
    setState(() => _currentSegment = newValue);
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Segment control'),
        previousPageTitle: 'Widgets',
      ),
      child: DefaultTextStyle(
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontSize: 15),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(16)),
              SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: CupertinoSegmentedControl<int>(
                    children: _items,
                    groupValue: _currentSegment,
                    onValueChanged: onValueChanged,
                  ),
                ),
              ),
              Expanded(child: _icons[_currentSegment])
            ]
          ),
        ),
      )
    );
  }
}