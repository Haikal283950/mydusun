import 'package:flutter/material.dart';
import 'package:mydusun_userapp/constants.dart';
import 'package:mydusun_userapp/screens/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyDusun',
      theme: ThemeData(primaryColor: keyColour, fontFamily: 'Open_Sans'),
      home: home_screen(),
    );
  }
}
