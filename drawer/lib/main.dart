import 'pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer GR',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new HomePage(),
    );
  }
}
