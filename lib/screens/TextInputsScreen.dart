import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputScreen extends StatefulWidget {
  TextInputScreen({Key key}) : super(key: key);

  @override
  _TextInputScreenState createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  TextEditingController _txtMailController;
  String _name;
  @override
  void initState() {
    super.initState();
    _txtMailController = TextEditingController(text: 'noname@domain.com');
  }
  @override
  void dispose(){
    _txtMailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Text Inputs'),
          previousPageTitle: 'Widgets',
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 40,
              color: CupertinoColors.lightBackgroundGray,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Introduce los siguientes datos',
                style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
              ),
            ),
            CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.person_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 28,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              clearButtonMode: OverlayVisibilityMode.editing,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0, color: CupertinoColors.inactiveGray)
                )
              ),
              placeholder: 'Name',
              autofocus: true,
              onEditingComplete: () => print('on editing completa'),
              onSubmitted: (value) {
                setState(() => _name = value);
              },
            ),
            CupertinoTextField(
              controller: _txtMailController,
              prefix: Icon(
                CupertinoIcons.mail_solid, size: 28,
                color: CupertinoColors.lightBackgroundGray,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0, color: CupertinoColors.inactiveGray)
                )
              ),
              placeholder: 'Email',
            ),
            CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.padlock_solid, size: 28, 
                color: CupertinoColors.lightBackgroundGray,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.number,
              autocorrect: false,
              obscureText: true,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0, color: CupertinoColors.inactiveGray)
                )
              ),
              placeholder: 'Create a PIN',
            ),
            Container(
              height: 40,
              color: CupertinoColors.lightBackgroundGray,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
            ),
            CupertinoButton(child: Text('Registrrar'), 
              onPressed: () => showDialog(context),
            )
          ],
        )
      ),
    );
  }
  void showDialog(BuildContext context){
    showCupertinoDialog(context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Saludo'),
          content: Text('Hola! $_name se envio al correo ${_txtMailController.text}'),
          actions: <Widget>[
            CupertinoDialogAction(child: Text('Ok'),
              isDefaultAction: true,
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      }
    );
  }
}
