import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/item/company_item_widget.dart';

class CompanyTabs extends StatelessWidget {

  final List<Widget> companyList = <Widget>[
    CompanyItem(1, "assets/image_31.png", color:Color(0xFFFE5000)),
    CompanyItem(2, 'assets/image_13.png', color:Color(0xFFFFFFFF)),
    CompanyItem(3, 'assets/image_14.png', color:Color(0xFFFFFFFF)),
    CompanyItem(4, 'assets/image_15.png', color:Color(0xFF0074CD)),
    CompanyItem(5,'assets/image_17.png', color:Color(0xFFF1B1C8)),
    CompanyItem(6,'assets/image_12.png', color:Color(0xFF000000))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 8.0, right: 8.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        children: companyList,
      ),
    );
  }
}