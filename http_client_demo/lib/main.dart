import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void getWeatherData() async {
    try {
      HttpClient httpClient = new HttpClient();
      // // 请求参数配置
      // Uri uri = Uri(scheme: "https",host: "t.wather.sojson.com",queryParameters: {
      //   "_id":26,
      //   "city_code":"101030100",
      //   "city_name":"天津"
      // });
      HttpClientRequest request = await httpClient.getUrl(
          Uri.parse('http://t.weather.sojson.com/api/weather/city/101030100'));
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
    } catch (e) {
      print("请求失败：+$e");
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'httpClient 请求示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('httpClient 请求'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('获取天气数据'),
            onPressed: getWeatherData,
          ),
        ),
      ),
    );
  }
}
