//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone_web/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
//runApp(DevicePreview(builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//    builder: DevicePreview.appBuilder,
//    locale: DevicePreview.locale(context),
      home: HomePage(),
    );
  }
}