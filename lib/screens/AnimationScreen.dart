import 'package:flutter/cupertino.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key key}) : super (key : key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar( middle:  Text('Animation container'),),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[],),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: 
                BoxDecoration(
                  color: CupertinoColors.activeGreen,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                //color: CupertinoColors.activeBlue,
              child: Icon(
                CupertinoIcons.play_arrow_solid,
                color: CupertinoColors.activeGreen,
                size: 30,
                ),
             ),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: 
                BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                //color: CupertinoColors.activeBlue,
              child: Icon(
                CupertinoIcons.play_arrow_solid,
                color: CupertinoColors.white,
                size: 30,
                ),
            ),
          ],
        ),
      ),
    );
  }
}