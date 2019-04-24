import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http请求示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Http请求示例'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var url1 = 'http://httpbin.org/';
              http.get(url1).then((response) {
                print("状态：${response.statusCode}");
                print("正文：${response.body}");
              });
            },
            child: Text('发起http请求'),
          ),
        ),
      ),
    );
  }
}
