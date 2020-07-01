import 'package:flutter/cupertino.dart';

class ActionSheetScreen extends StatelessWidget {
  const ActionSheetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheets and alerts'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: Column(children: <Widget>[
          Row(children: <Widget>[],),
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
            child: 
            SizedBox(
              width: 230,
              child: CupertinoButton.filled(
                child: Text('Alert'), 
                onPressed: () {}),
            )
          ),
          SizedBox(
            width: 230,
            child: CupertinoButton.filled(
              child: Text('Action Sheets'), 
              onPressed: () {}
            ),
          ),
        ]),
      ),
    );
  }
}
