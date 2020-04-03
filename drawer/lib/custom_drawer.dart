import 'package:flutter/material.dart';
class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int page = 0;
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Gerson Ramos'),
              accountEmail: Text('gr@geron.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/280x280_RS/a4/9a/bc/a49abcb528569953277813fe19e3dfad.jpg'),
              ),
            ),

            ListTile(selected: page == 0, title:Text('vermelho'), onTap:() {setState(() {              
            }); page = 0;},),
            ListTile(selected: page == 1, title:Text('verde'), onTap:() {setState(() {
              
            }); page = 1;},),
            ListTile(selected: page == 2, title:Text('Azul'), onTap:() {setState(() {
              
            }); page = 2;},),
            ListTile(selected: page == 3, title:Text('Preto'), onTap:() {setState(() {
              
            }); page = 3;},),            
          ],
        )
      );
  }
}