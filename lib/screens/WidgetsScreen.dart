import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_explorer/src/utilities/cupertino_icons_custom.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBackground,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Widgets Explorer'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CupertinoColors.systemBackground,
                    ),
                    child: Column(
                      children: <Widget>
                      [
                        ListTile( 
                          leading: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeBlue
                            ),
                            child: Icon(CupertinoIcons.bell_solid, color: CupertinoColors.white,)
                          ),
                          title: Text('Action Sheets and alerts'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                          onTap: (){
                            Navigator.pushNamed(context, '/actionsheet');
                          },
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 50),
                          color: CupertinoColors.systemGrey5,
                        ),
                        ListTile( 
                          leading: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.black
                            ),
                            child: Icon(getCupertinoIconData('squareandpencil'), color: CupertinoColors.white,)
                          ),
                          title: Text('Text inputs'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                          onTap: (){
                            Navigator.pushNamed(context, '/textinputs');
                          },
                        ),
                        
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 50),
                          color: CupertinoColors.systemGrey5,
                        ),
                        ListTile( 
                          leading: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemGreen
                            ),
                            child: Icon(getCupertinoIconData('slider'), color: CupertinoColors.white,)
                          ),
                          title: Text('Switch and slider'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                          onTap: (){
                            Navigator.pushNamed(context, '/switchandslider');
                          },
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 50),
                          color: CupertinoColors.systemGrey5,
                        ),
                        ListTile( 
                          leading: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemIndigo
                            ),
                            child: Icon(getCupertinoIconData('segmented'), color: CupertinoColors.white,)
                          ),
                          title: Text('Segmented Control'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                          onTap: (){
                            Navigator.pushNamed(context, '/segmentcontrol');
                          },
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 50),
                          color: CupertinoColors.systemGrey5,
                        ),
                        ListTile( 
                          leading: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeOrange
                            ),
                            child: Icon(getCupertinoIconData('calendar'), color: CupertinoColors.white,)
                          ),
                          title: Text('Pickers'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                          onTap: (){
                            Navigator.pushNamed(context, '/pickers');
                          },
                        ),
                      ],
                    ),
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
