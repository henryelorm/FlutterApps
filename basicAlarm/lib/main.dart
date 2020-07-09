import 'package:basicAlarm/src/utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:basicAlarm/src/views/home.dart';
import 'package:basicAlarm/src/widgets/custom_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool flip = true;
    AppBar appBar = flip
        ? AppBar()
        : AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                );
              },
            ),
          );
    Widget child = HomePage(appBar: appBar);
    if (flip) {
      child = CustomDrawer(
        child: child,
      );
    }
    return MaterialApp(
      title: 'Interval',
      theme: basicTheme(),
      initialRoute: '/',
      routes: {'/': (context) => child},
    );
  }
}
