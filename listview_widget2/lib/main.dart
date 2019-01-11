import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'listview widget',
      home: Scaffold(
        appBar: AppBar(title: Text('listview Widget')),
        body: Center(
          child: Container(
            height: 120,
            child: ListView(
              // 横向滚动
              scrollDirection: Axis.horizontal,
              // // 纵向滚动
              // scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  width: 120,
                  // height: 120,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 120,
                  // height: 120,
                  color: Colors.red,
                ),
                Container(
                  width: 120,
                  // height: 120,
                  color: Colors.orange,
                ),
                Container(
                  width: 120,
                  // height: 120,
                  color: Colors.green,
                ),
                Container(
                  width: 120,
                  // height: 120,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
