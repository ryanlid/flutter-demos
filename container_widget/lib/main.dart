import 'package:flutter/material.dart';

// void main()=>runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget'),
        ),
        body: Container(
          child: Text(
            'Hello world',
            style: TextStyle(fontSize: 24),
          ),
          // alignment: Alignment.bottomCenter,
          alignment: Alignment.topLeft,
          width: 500,
          height: 300,
          // color: Colors.lightBlue,
          padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
          margin: EdgeInsets.all(20),
          // 装饰
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.lightBlue,
                Colors.greenAccent,
                Colors.purple
              ]),
              border: Border.all(width: 5, color: Colors.red)),
        ),
      ),
    );
  }
}
