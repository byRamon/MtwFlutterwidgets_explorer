import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        child: Center(
          child: Container(
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }
}