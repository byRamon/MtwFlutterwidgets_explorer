import 'package:flutter/cupertino.dart';

class ActionSheetScreen extends StatefulWidget {
  ActionSheetScreen({Key key}) : super(key: key);

  @override
  _ActionSheetScreenState createState() => _ActionSheetScreenState();
}

class _ActionSheetScreenState extends State<ActionSheetScreen> {
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheets and alerts'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(height: 20,),
            SizedBox(
              width: 230,
              child: CupertinoButton.filled(
                child: Text('Alert'), 
                onPressed: () => showAlert(context),
              ),
            ),
            SizedBox(height: 16,),
            SizedBox(
              width: 230,
              child: CupertinoButton.filled(
                child: Text('Action Sheets'), 
                onPressed: () => showActionSheet(context)
              ),
            ),
            Text('Haz seleccionado la opcion $selectedValue')
          ]),
        ),
      ),
    );
  }

  void showActionSheet(BuildContext context){
    showCupertinoModalPopup<String>(context: context, 
      builder: (context){
        return CupertinoActionSheet(
          title: Text('Frame work favorito'),
          message: Text('Selecciones su framework'),
          cancelButton: CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context, 'Cancelar'), 
              child: Text('Cancelar'),
              isDefaultAction: true,            
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context, 'Flutter'), 
              child: Text('Flutter'),
              isDestructiveAction: true,
            ),
            CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context, 'React Native'), 
              child: Text('React Native'),
            ),
            CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context, 'Native Script'), 
              child: Text('Native Script'),
            ),
          ],
        );
      }
    ).then((value) {
      setState(() {
        selectedValue = value;
      });
    });
  }

  void showAlert(BuildContext context) {
    showCupertinoDialog<String>(context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Guardar los cambios?'),
          content: Text('Desea guardar los cambios?'),
          actions: <Widget>[
            CupertinoDialogAction(child: Text('Cancelar'), 
              onPressed: () => Navigator.pop(context, 'Cancelar'),
            ),
            CupertinoDialogAction(child: Text('Guardar'),
              onPressed: () => Navigator.pop(context, 'Guardar'),
            ),
          ],
        );
      }
    ).then((value) {
      setState(() {
        selectedValue = value;
      });
    });
  }
}
