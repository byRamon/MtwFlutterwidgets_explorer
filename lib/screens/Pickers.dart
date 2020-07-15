import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Pickers extends StatefulWidget {
  Pickers({Key key}) : super(key: key);

  @override
  _Pickers createState() => _Pickers();
}

class _Pickers extends State<Pickers> {
  Duration _timer = const Duration();
  DateTime _date = DateTime.now();
  DateTime _time = DateTime.now();
  DateTime _dateTime = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Pickers'),
        previousPageTitle: 'Widgets',
      ),
      child: DefaultTextStyle(style: CupertinoTheme.of(context).textTheme.textStyle, 
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 32)),
            _buildDatePicker(context),
            _builtTimePicker(context),
            _builtDateAndTimePicker(context),
          ],
        )
      )
    );
  }
  Widget _buildDatePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(context: context, 
          semanticsDismissible: true, 
          builder: (BuildContext context){
            return _BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor: CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.date,
                initialDateTime: _date,
                onDateTimeChanged: (DateTime value){
                  setState(() => _date = value);
                }
              )
            );
          }
        );
      },
      child: _Menu(
        children: <Widget>[
          const Text('Date'),
          Text(DateFormat.yMMMMd().format(_date),
            style: TextStyle(color: CupertinoDynamicColor.resolve(CupertinoColors.inactiveGray, context)),
          )
        ]
      ),
    );
  }

  Widget _builtTimePicker(BuildContext context){
    return GestureDetector(
      onTap: (){
        showCupertinoModalPopup<void>(context: context, semanticsDismissible: true, 
          builder: (BuildContext context){
            return _BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor: CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.time,
                initialDateTime: _time,
                onDateTimeChanged: (DateTime value){
                  setState(() => _time = value);
                },
              )
            );
          }
        );
      },
      child: _Menu(
        children: <Widget>[
          const Text('Time'),
          Text(DateFormat.jm().format(_time), 
            style: TextStyle(color: CupertinoDynamicColor.resolve(CupertinoColors.inactiveGray, context)),
          )
        ]
      ),
    );
  }
  Widget _builtDateAndTimePicker(BuildContext context){
    return GestureDetector(
      onTap: (){
        showCupertinoModalPopup<void>(context: context, semanticsDismissible: true,
          builder: (BuildContext context){
            return _BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor: CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.dateAndTime,
                initialDateTime: _dateTime, 
                onDateTimeChanged: (DateTime value){
                  setState(() => _dateTime = value);
                }
              ),
            );
          }
        );
      },
      child: _Menu(
        children: <Widget>[
          const Text('Date and Time'),
          Text(DateFormat.yMMMMd().add_jm().format(_dateTime), 
            style: TextStyle(color: CupertinoDynamicColor.resolve(CupertinoColors.inactiveGray, context)),
          )
        ]
      ),
    );
  }
}
class _BottomPicker extends StatelessWidget {
  const _BottomPicker({Key key, @required this.child}) : assert (child != null), super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6),
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 22, color: CupertinoColors.label.resolveFrom(context)), 
        child: GestureDetector(
          onTap: () {},
          child: SafeArea(
            top: false,
            child: child
          ),
        )
      ),
    );
  }
}
class _Menu extends StatelessWidget {
  const _Menu({Key key, @required this.children, }) : assert(children != null), super(key : key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoTheme.of(context).scaffoldBackgroundColor,
        border: const Border(
          top: BorderSide(color: Color(0xFFBCBBC1), width: 0),
          bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0)
        ),
      ),
      height: 44,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          top: false,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          )
        ),
      )
    );
  }
}