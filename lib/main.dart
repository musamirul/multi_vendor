import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_vendor/views/buyers/main_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}