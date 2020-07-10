import 'package:flutter/material.dart';
import './MainDrawer.dart';

class FilterScreen extends StatefulWidget {
  final Function selectColor;
  final Color bgColor;
  FilterScreen({this.selectColor,this.bgColor});
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      appBar: AppBar(
        title: Text("FilterScreen"),
      ),
      drawer: MainDrawer(),
      body: Column(children: <Widget>[
        Text("Select Background Color"),
        Row(
          children: <Widget>[
            Text("Red Color"),
            SizedBox(width: 10,),
            RaisedButton(
              onPressed: () {
              widget.selectColor(Colors.red);
              },
              child: Text("Select"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text("Green Color"),
            SizedBox(width: 10,),
            RaisedButton(
              onPressed: () {
               widget.selectColor(Colors.green);
              },
              child: Text("Select"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text("Yellow Color"),
            SizedBox(width: 10,),
            RaisedButton(
              onPressed: () {
              widget.selectColor(Colors.yellow);
              },
              child: Text("Select"),
            ),
          ],
        )
      ]),
    );
  }
}
