import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/tab/offer_tabs.dart';
import 'package:flutter_tabs/ui/widget/tab/company_tabs_widget.dart';

class MainScreen extends StatefulWidget {

  final _drawerItems = ListView(
    children: <Widget>[
      UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
          child: Image.asset('assets/Union.png'),
          backgroundColor: Colors.transparent,
        ),
      ),
      ListTile(
        title: Text('Профиль'),
      ),
      ListTile(
        title: Text('Позиция'),
      ),
      ListTile(
        title: Text('Корпоратка'),
      ),
      ListTile(
        title: Text('Транзакции'),
      ),
      ListTile(
        title: Text('Настройки'),
      ),
    ],
  );

  final _allTabs = <Tab>[
    Tab( text: 'Предложения' ),
    Tab( text: 'Компании' ),
  ];

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget._allTabs.length,
      child: Scaffold(
        drawer: drawer(),
        appBar: appBar(),
        body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  OfferTabs()
                ],
              ),
              CompanyTabs()
            ],
        ),
      ),
    );
  }

  Widget drawer(){
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
//                      begin: Alignment.topLeft,
//                      end: Alignment.bottomRight,
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.1,1],
              colors: [Color(0xFF27C189),Color(0xFF237BBF)],
            )
        ),
        child: widget._drawerItems,
      ),
    );
  }

  Widget appBar(){
    return AppBar(
      title: Text('Корпоратив'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.info_outline,color: Colors.white),
        ),
      ],
      backgroundColor: Color(0xFF02AD58),
      bottom: TabBar(
        indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal:16.0)
        ),
        indicatorColor: Colors.white,
        tabs: widget._allTabs,
      ),
    );
  }

}