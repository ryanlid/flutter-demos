import 'dart:async' show Future;
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asset 示例',
      home: Scaffold(
          appBar: AppBar(
            title: Text('asset 示例'),
          ),
          body: Container(
            child: Image.asset('images/1.png'),
            height: 200,
            width: 200,
          )),
    );
  }
}
