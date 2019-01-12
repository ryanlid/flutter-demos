import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      // 两个元素的对齐方式，取值范围大于0，小于1
      alignment: FractionalOffset(0.5, 0.9),
      children: <Widget>[
        CircleAvatar(
          backgroundImage:
              NetworkImage('https://file.lidong.me/avater/ball-100x100.jpg'),
          radius: 100,
        ),
        Container(
          child: Text('Dong'),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        )
      ],
    );
    return MaterialApp(
      title: "Stack Widget",
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Widget')),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
