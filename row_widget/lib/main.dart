import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'row widget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Row widget'),
          ),
          body: Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue,
                child: Text('Hello'),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text('World'),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text('Button'),
                ),
              ),
            ],
          )),
    );
  }
}
