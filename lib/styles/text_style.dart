import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/responsive_setup/responsive.dart';

class StyleText {
  static final TextStyle textStyle1White = TextStyle(
    color: Colors.white,
    fontSize: Responsive.textScaleFactor * 4,
  );
  static final TextStyle textStyle2Black = TextStyle(
    color: Colors.black87,
    fontSize: Responsive.textScaleFactor * 4,
  );
  static final TextStyle textStyle3Black = TextStyle(
      color: Colors.black87, fontSize: Responsive.textScaleFactor * 2.5);
  static final TextStyle textStyle3Black54 = TextStyle(
      color: Colors.black54, fontSize: Responsive.textScaleFactor * 2.3);
  static final TextStyle textStyle3White = TextStyle(
      color: Colors.white, fontSize: Responsive.textScaleFactor * 2.5);
  static final TextStyle textStyle4Black = TextStyle(
      color: Colors.black, fontSize: Responsive.textScaleFactor * 1.9);
  static final TextStyle textStyle4Black54 = TextStyle(
      color: Colors.black54, fontSize: Responsive.textScaleFactor * 1.9);
  static final TextStyle textStyle4White = TextStyle(
      color: Colors.white, fontSize: Responsive.textScaleFactor * 1.9);
}
