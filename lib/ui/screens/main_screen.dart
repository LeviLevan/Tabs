import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/tab/company_tabs_widget.dart';
import 'package:flutter_tabs/ui/search_app_bar.dart';
import 'package:flutter_tabs/ui/drawer.dart';
import 'package:flutter_tabs/ui/widget/tab/offer_tabs_widget.dart';

class MainScreen extends StatefulWidget {

  final _allTabs = <Tab>[
    Tab( text: 'Предложения' ),
    Tab( text: 'Компании' ),
  ];

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget._allTabs.length,
      child: Scaffold(
        drawer: DrawerMenu(),
        appBar: SearchAppBar(widget._allTabs),
        body: TabBarView(
            children: <Widget>[
              OfferTabsWidget(),
              CompanyTabs()
            ],
        ),
      ),
    );
  }

}