

import 'package:flutter/cupertino.dart';

final _iconos = <String, IconData>{
  'slider' : IconData(
          0xf4a6,
          fontFamily: CupertinoIcons.iconFont, 
          fontPackage: CupertinoIcons.iconFontPackage
        ),
  'segmented' : IconData(
           0xf4c3, 
          fontFamily: CupertinoIcons.iconFont, 
          fontPackage: CupertinoIcons.iconFontPackage
        ),
  'calendar' : IconData(
           0xf2d1, 
          fontFamily: CupertinoIcons.iconFont, 
          fontPackage: CupertinoIcons.iconFontPackage
        ),
  'squareandpencil' : IconData(
           0xf418, 
          fontFamily: CupertinoIcons.iconFont, 
          fontPackage: CupertinoIcons.iconFontPackage
        ),
      
};

IconData getCupertinoIconData(String nombreIcono){
    return _iconos[nombreIcono];  
}

