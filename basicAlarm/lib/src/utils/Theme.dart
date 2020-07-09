import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
            fontFamily: 'OpenSans', fontSize: 27.0, color: Colors.yellow),
        display1: base.display1
            .copyWith(fontFamily: 'Roboto', fontSize: 24.0, color: Colors.grey),
        display2: base.display2
            .copyWith(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.grey),
        display3: base.display3.copyWith(
            fontFamily: 'Roboto',
            fontSize: 56.0,
            fontWeight: FontWeight.w300,
            color: Colors.grey));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xffD4842B),
    primaryColorDark: Color(0xff67421A),
  );
}
