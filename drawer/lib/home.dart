import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        onTap: (int value) {
          setState(() {
            page = value;
          });
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text('Home pag 1'),
      ),
      body: IndexedStack(
        index: page,
        children: <Widget>[
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.black),
        ],
      ),
    );
  }
}
