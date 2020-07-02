import 'package:flutter/cupertino.dart';

class AnimationScreen extends StatefulWidget {
  AnimationScreen({Key key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with TickerProviderStateMixin {
  Animation heightAnimation, widthAnimation, colorAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    heightAnimation = Tween(begin: 50.0, end: 200.0).animate(CurvedAnimation(
      curve: Curves.bounceOut, parent: animationController));
    widthAnimation = Tween(begin: 50.0, end: 10.0).animate(CurvedAnimation(
      curve: Curves.bounceOut, parent: animationController));
    colorAnimation = ColorTween(begin: CupertinoColors.activeGreen, end: CupertinoColors.activeBlue).animate(
      CurvedAnimation(curve: Curves.ease, parent: animationController));
  }
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar( middle:  Text('Animation container'),),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[],),
            Spacer(),
            AnimatedBuilder(
              animation: animationController,
              builder: (context, index) {
                return Container(
                    height: heightAnimation.value,
                    width: widthAnimation.value,
                    decoration: 
                      BoxDecoration(
                        color: colorAnimation.value,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                    child: null
                  );
              }
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
              child: CupertinoButton(
                child: Icon(
                  CupertinoIcons.play_arrow_solid,
                  color: CupertinoColors.white,
                  size: 20,
                ),
                onPressed: (){
                  animationController.isCompleted ? animationController.reverse() : animationController.forward();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}