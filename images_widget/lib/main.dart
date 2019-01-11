import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'image_widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              'https://static.lidong.me/file/avater/ball-100x100.jpg',
              // fit: BoxFit.scaleDown,
              color: Colors.orange,
              colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.noRepeat,
            ),
            width: 300,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
    ));
  }
}
