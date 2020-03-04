import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {

  final _drawerItems = ListView(
    children: <Widget>[
      UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
          child: Image.asset('assets/Union.png'),
          backgroundColor: Colors.transparent,
        ),
      ),
      //SizedBox( height: 50),
      ListTile(title: Text('Профиль')),
      ListTile(title: Text('Позиция')),
      ListTile(title: Text('Корпоратка')),
      ListTile(title: Text('Транзакции')),
      ListTile(title: Text('Настройки')),
    ],
  );

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

     child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
//              begin: FractionalOffset.topCenter,
//              end: FractionalOffset.bottomCenter,
              stops: [0.1,1],
              colors: [Color(0xFF27C189),Color(0xFF237BBF)],
            )
        ),
       child: widget._drawerItems,
     ),
    );
  }
}
