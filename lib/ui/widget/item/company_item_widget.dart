import 'package:flutter/material.dart';

class CompanyItem extends StatelessWidget {

  final int id;
  final Color color;
  final String image;

  CompanyItem(this.id, this.image, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      decoration: new BoxDecoration(
          color: color,
          borderRadius: new BorderRadius.circular(8.0),
          border: new Border.all(
            width: 1.0,
            color: Color.fromRGBO(192, 192, 192, 0.2),
          )
      ),
      child: Center(
          child: Image.asset(image)
      ),
    );
  }
}
