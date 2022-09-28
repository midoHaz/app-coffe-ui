import 'package:coffe_app_ui/coffepages/homePage.dart';
import 'package:coffe_app_ui/screen_02.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DetailsScreen(),
      theme:ThemeData(brightness:Brightness.dark,
      primarySwatch: Colors.deepOrange),

    );
  }
}
