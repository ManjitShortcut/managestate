import 'package:flutter/material.dart';
import './FilterScreen.dart';
import './DetailScreen.dart';
import './MainDrawer.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Color bgColor = Colors.red;
  void selecdbgColor(Color color) {
    setState(() {
      this.bgColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (ctx) => MyHomePage(bgColor),
        "/DetailPage": (ctx) => DetailScreen(bgColor),
        "/flterPage": (ctx) => FilterScreen(selectColor:selecdbgColor,bgColor:this.bgColor),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Color bgColor;
  MyHomePage(this.bgColor);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      appBar: AppBar(
        title: Text("State matain"),
      ),
      body: Text("home page"),
      drawer: MainDrawer(),
    );
  }
}
