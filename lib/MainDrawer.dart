import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Colors.red,
            child: Text("Drawer"),
          ),
          ListTile(
            leading: Icon(
              Icons.filter,
              color: Colors.black,
            ),
            title: Text(
              "Filter",
              style: TextStyle(fontSize: 35),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/flterPage");
            },
          ),
          SizedBox(height: 40),
          FlatButton(onPressed:(){
          Navigator.of(context).pushReplacementNamed("/");
         }, child: Text("Move to back")),
        ],
      ),
    );
  }
}
