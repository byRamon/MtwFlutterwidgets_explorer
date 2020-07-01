import 'package:flutter/cupertino.dart';
import 'WidgetsScreen.dart';
import 'AnimationScreen.dart';
import 'CardScreen.dart';
import 'package:widgets_explorer/src/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super (key : key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('Widgets')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.play_arrow), title: Text('Animation')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.share_up), title: Text('Cards')),
        ],
      ), 
      tabBuilder: (context, index){
        return CupertinoTabView(
          routes: getApplicationRoutes(),
          builder: (context){
            switch(index){
              case 0: 
                return WidgetScreen();
                break;
              case 1: 
                return AnimationScreen();
                break;
              case 2: 
                return CardScreen();
                break;
            }
            return WidgetScreen();
          },
        );
      },
    );
  }
}