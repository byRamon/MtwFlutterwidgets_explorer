import 'package:flutter/cupertino.dart';

class SliderAndSwitch extends StatefulWidget {
  SliderAndSwitch({Key key}) : super(key: key);

  @override
  _SliderAndSwitchState createState() => _SliderAndSwitchState();
}

class _SliderAndSwitchState extends State<SliderAndSwitch> {
  var _valor = 50.0;
  var _encendido = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Slider and Switch'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),//Transform.scale( scale: 2.0,
            child: Column(
              children: <Widget>[
                _slider(),
                _switch(),
              ],
            )
          )
        )
      )
    );
  }

  Widget _slider(){
    return  SizedBox( //Transform.scale( scale: 2.0,
      width: double.infinity,
      child: CupertinoSlider(//Slider.adaptive
        min: 50,
        max: 400,
        value: _valor, 
        onChanged: _encendido ? null : (value){
          setState(() => _valor = value );
        }
      )
    );
  }

  Widget _switch(){
    return Row(
      children: <Widget>[
        Expanded(child: Text('Bloquear'),),
        CupertinoSwitch(value: _encendido, 
          onChanged: (bool value){
            setState(() => _encendido = value );
          }
        ),
      ],
    );
  }
}     