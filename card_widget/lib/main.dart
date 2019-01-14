import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'Card Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('列表标题1'),
                subtitle: Text('列表子标题1'),
                leading: Icon(Icons.home, color: Colors.lightBlue),
              ),
              Divider(),
              ListTile(
                title: Text('列表标题2'),
                subtitle: Text('列表子标题2'),
                leading: Icon(Icons.phone, color: Colors.lightBlue),
              ),
              Divider(),
              ListTile(
                title: Text('列表标题3'),
                subtitle: Text('列表子标题3'),
                leading: Icon(Icons.cloud, color: Colors.lightBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
