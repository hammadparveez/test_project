import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsive {
  static double _deviceHeight,
      _deviceWidth,
      _deviceBlockWidth,
      _deviceBlockHeight,
      _widgetScaleFactor,
      _textScaleFactor;

  static void init(BuildContext context) {
    final data = MediaQuery.of(context);
    _deviceWidth = data.size.width;
    _deviceHeight = data.size.height;
    _deviceBlockWidth = _deviceWidth / 100;
    _deviceBlockHeight = _deviceHeight / 100;
    if (data.orientation == Orientation.portrait)
      _widgetScaleFactor = _deviceBlockHeight;
    else
      _widgetScaleFactor = _deviceBlockWidth;
    _textScaleFactor = _widgetScaleFactor;
  }

  @override
  String toString() {
    return "$deviceHeight, $deviceWidth, $deviceBlockHeight, $deviceBlockWidth, $widgetScaleFactor, $textScaleFactor";
  }

  static double get deviceHeight => _deviceHeight;
  static double get deviceWidth => _deviceWidth;
  static double get deviceBlockHeight => _deviceBlockHeight;
  static double get deviceBlockWidth => _deviceBlockWidth;
  static double get widgetScaleFactor => _widgetScaleFactor;
  static double get textScaleFactor => _textScaleFactor;
}
