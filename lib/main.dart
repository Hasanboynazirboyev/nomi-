import 'package:dars5/my_home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(centerTitle: true)),
      home: MyHomePage()
    );
  }

}
