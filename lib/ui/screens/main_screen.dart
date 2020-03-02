import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/tab/offer_tabs_widget.dart';
import 'package:flutter_tabs/ui/widget/tab/company_tabs_widget.dart';
import 'package:flutter_tabs/ui/search_app_bar.dart';
import 'package:flutter_tabs/ui/drawer.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: DrawerMenu(),
        appBar: SearchAppBar(),
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

}