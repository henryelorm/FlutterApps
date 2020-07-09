import 'package:flutter/material.dart';
import 'package:basicAlarm/src/utils/constants.dart';

class HomePage extends StatefulWidget {
  final AppBar appBar;

  HomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int selected = 0;
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: ListView(
        children: <Widget>[
          days(context, selected),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "Time",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          TimeWidget(context),
          startWidget(context),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.alarm),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (newValue) => setState(() {
                    dropdownValue = newValue;
                  }),
                  items: <String>['one', 'two', 'three', 'four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget days(BuildContext context, selected) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Days",
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        Container(
          height: 35,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: day.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return daysButtons(context, index, selected);
            },
          ),
        ),
      ],
    ),
  );
}

Widget daysButtons(BuildContext context, index, selected) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 6.5),
    child: SizedBox(
      width: 35,
      child: RaisedButton(
          color:
              selected == index ? Theme.of(context).primaryColor : Colors.white,
          child: Text(
            "${day[index][index]}",
            style: TextStyle(
              color: selected == index
                  ? Colors.white
                  : Theme.of(context).primaryColor,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 2.0,
          onPressed: () {
            print('$index');
          }),
    ),
  );
}

Widget TimeWidget(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "0",
          style: Theme.of(context).textTheme.display3,
        ),
        Text(
          "0",
          style: Theme.of(context).textTheme.display3,
        ),
        Text(
          ":",
          style: TextStyle(
              color: Colors.grey, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          "0",
          style: Theme.of(context).textTheme.display3,
        ),
        Text(
          "0",
          style: Theme.of(context).textTheme.display3,
        ),
      ],
    ),
  );
}

Widget startWidget(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 15.0),
    child: RaisedButton(
      elevation: 30,
      color: Theme.of(context).primaryColor,
      child: Text(
        'Start',
        style: TextStyle(color: Colors.white, fontSize: 24.0),
      ),
      onPressed: () {},
      padding: EdgeInsets.all(70),
      shape: CircleBorder(),
    ),
  );
}
