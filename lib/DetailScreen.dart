import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Color bgColor;
  DetailScreen(this.bgColor);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Container(
        child: Text("detail screen"),
      ),
    );
  }
}
