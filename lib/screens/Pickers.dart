import 'package:flutter/cupertino.dart';

class Pickers extends StatefulWidget {
  Pickers({Key key}) : super(key: key);

  @override
  _Pickers createState() => _Pickers();
}

class _Pickers extends State<Pickers> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Pickers'),
        previousPageTitle: 'Widgets',
      ),
      child: 
        SafeArea(
          child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),                    
                    child: Row(
                      children: <Widget>[
                        Text('Date'),
                        Spacer(),
                        Text('Date jjkk', )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text('Time'),
                        Spacer(),
                        Text('Date oijoijoj')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text('Date and Time'),
                        Spacer(),
                        Text('Date uyuy')
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (value){
                      }
                    ),
                  )
                ],
              )
            )
        )
    );
  }
}