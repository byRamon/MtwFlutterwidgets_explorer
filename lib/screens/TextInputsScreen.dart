import 'package:flutter/cupertino.dart';

class TextInputsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text Inputs'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: 
          Column(
            children: <Widget>
            [
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                color: CupertinoColors.systemGrey6,
                child: 
                Row(
                  children: <Widget>[
                    Text('Introduce los siguientes datos:', 
                    textAlign: TextAlign.left, 
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                )
              ),
              CupertinoTextField(
                prefix: const Icon(
                  CupertinoIcons.person_solid,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                //decoration: InputDecoration(                  prefixIcon: Icon(Icons.done)),
                placeholder: "Name",
              ),
              CupertinoTextField(
                prefix: const Icon(
                  CupertinoIcons.mail_solid,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                placeholder: "Email",
              ),
              CupertinoTextField(
                prefix: const Icon(
                  CupertinoIcons.padlock_solid,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                placeholder: "Create a PIN",
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 20, 110, 20),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                color: CupertinoColors.systemGrey6,
                child: 
                Row(children: <Widget>[],)
              ),
              CupertinoButton(child: Text('Registrar'), onPressed: () {})
            ]
          ),
      ),
    );
  }
}
