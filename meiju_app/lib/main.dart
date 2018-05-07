import 'package:flutter/material.dart';
import 'package:meiju_app/page/MainPage.dart';
import 'package:meiju_app/page/routes/routes.dart';
import 'package:meiju_app/httpserver/simple_server.dart';

void main()  {
  runHttpServer();
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '美剧APP',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: routes,
      home: new MainPage(),
    );
  }
}

/// 开启 Http 服务
runHttpServer(){
  SimpleServer server=new SimpleServer();
  server.closeServer();
  server.startServer();
}




