import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listview Widget",
      home: Scaffold(
          appBar: AppBar(
            title: Text('Listview Widget'),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('access_alarm'),
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('help_outline'),
              ),
              Image.network(
                  'https://static.lidong.me/file/expression/emoji/google/3.gif'),
              ListTile(
                leading: Icon(Icons.hd),
                title: Text('hd'),
              ),
              Image.network(
                  'https://static.lidong.me/file/expression/emoji/google/17.gif'),
            ],
          )),
    );
  }
}
