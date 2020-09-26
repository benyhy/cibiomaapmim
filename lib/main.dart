import 'package:flutter/material.dart';

import 'package:apmim/src/pages/home/home_page.dart';
import 'package:apmim/src/pages/cibioma/cibioma_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Homepage(),
        'cibioma': (BuildContext context) => CibiomaPage(),
      },
    );
  }
}