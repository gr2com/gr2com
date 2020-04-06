import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar ({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: 90,width: 150, 
            child: Image.asset('assets/logo.png'),
          ),
          Row(children: <Widget>[
            _NavBarItem('Episodios'),
            SizedBox(width: 60,),
            _NavBarItem('Sobre'),
          ],)
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}