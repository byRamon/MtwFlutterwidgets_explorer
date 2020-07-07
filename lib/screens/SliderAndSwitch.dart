import 'package:flutter/cupertino.dart';

class SliderAndSwitch extends StatefulWidget {
  SliderAndSwitch({Key key}) : super(key: key);

  @override
  _SliderAndSwitchState createState() => _SliderAndSwitchState();
}

class _SliderAndSwitchState extends State<SliderAndSwitch> {
  var valor = 0.0;
  var encendido = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Slider and Switch'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( //Transform.scale( scale: 2.0,
                width: 500, 
                height: 40,
                child: CupertinoSlider(//Slider.adaptive
                  value: valor, 
                  onChanged: (value){
                    setState(() { valor = value; }); 
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text('Bloquear Slider'),
                  Spacer(),
                  CupertinoSwitch(
                    value: encendido, 
                    onChanged: (value){
                      setState(() { encendido = value;});
                    },
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}