import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final AppBar appBar;

  HomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: Center(),
    );
  }
}
