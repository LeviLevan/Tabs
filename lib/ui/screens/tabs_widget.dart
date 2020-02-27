import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/screens/tab_content_offers_widget.dart';
import 'package:flutter_tabs/ui/screens/tab_content_company_widget.dart';

class Tabs extends StatefulWidget {

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
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
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
                  TabContentOffers(
                    imageUrl1:'assets/image_20.png',
                    imageUrl2:'assets/image_22.png',
                    imageUrl3:'assets/image_38.png',
                    imageUrl4:'assets/image_20.png',
                    imageUrl5:'assets/image_22.png',
                    imageUrl6:'assets/image_38.png',
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  TabContentCompany(
                    imageUrl1:'assets/image_31.png',
                    imageUrl2:'assets/image_13.png',
                    imageUrl3:'assets/image_14.png',
                    imageUrl4:'assets/image_15.png',
                    imageUrl5:'assets/image_17.png',
                    imageUrl6:'assets/image_12.png',
                  ),
                ],
              )
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