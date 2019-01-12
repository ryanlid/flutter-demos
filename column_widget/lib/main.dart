import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Column Widget'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'I am coding',
              ),
              Expanded(
                child: Text(
                  'Flutter is a great Framework',
                ),
              ),
              Text(
                'My website is lidong.me',
              ),
            ],
          )),
    );
  }
}
