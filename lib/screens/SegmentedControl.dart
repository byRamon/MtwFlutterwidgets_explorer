import 'package:flutter/cupertino.dart';

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key}) : super(key: key);

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int valor = 0;
  final Map<int, Widget> items = const<int, Widget>{
    0:Text('Indigo', style: TextStyle(color: CupertinoColors.black, fontWeight: FontWeight.bold)),
    2:Text('Teal', style: TextStyle(color: CupertinoColors.black, fontWeight: FontWeight.bold)),
    3:Text('Cyan', style: TextStyle(color: CupertinoColors.black, fontWeight: FontWeight.bold)),
  };
  final dynamic colors = [
    CupertinoColors.systemIndigo,
    CupertinoColors.systemTeal,
    CupertinoColors.systemPink
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Slider and Switch'),
        previousPageTitle: 'Widgets',
      ),
      child: 
        SafeArea(
          child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CupertinoSegmentedControl(
                      selectedColor: CupertinoColors.white,
                      unselectedColor: CupertinoColors.systemGrey3,
                      borderColor: CupertinoColors.systemGrey,
                      groupValue: valor,
                      onValueChanged: (value){
                        setState(() { valor = value; });
                      },
                      children: items, 
                    )
                  )
                ]
              ),
            )
        )
    );
  }
}