import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabContentCompany extends StatefulWidget {

    String _imageUrl1 = '';
    String _imageUrl2 = '';
    String _imageUrl3 = '';
    String _imageUrl4 = '';
    String _imageUrl5 = '';
    String _imageUrl6 = '';

  TabContentCompany({String imageUrl1,String imageUrl2,String imageUrl3,
    String imageUrl4,String imageUrl5,String imageUrl6}){
    _imageUrl1 = imageUrl1;
    _imageUrl2 = imageUrl2;
    _imageUrl3 = imageUrl3;
    _imageUrl4 = imageUrl4;
    _imageUrl5 = imageUrl5;
    _imageUrl6 = imageUrl6;
  }

  @override
  _TabContentCompanyState createState() => _TabContentCompanyState();
}

class _TabContentCompanyState extends State<TabContentCompany> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              companyImage(widget._imageUrl1,0xFFFE5000),
              companyImage(widget._imageUrl2,0xFFFFFFFF)
            ],
          ),
          Row(
            children: <Widget>[
              companyImage(widget._imageUrl3,0xFFFFFFFF),
              companyImage(widget._imageUrl4,0xFF0074CD)
            ],
          ),
          Row(
            children: <Widget>[
              companyImage(widget._imageUrl5,0xFFF1B1C8),
              companyImage(widget._imageUrl6,0xFF000000)
            ],
          )
        ],
      ),
    );
  }

  Widget companyImage(image,color){
    String _image = '';
    int _color;

    _image = image;
    _color = color;

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: new BoxDecoration(
            color: Color(_color),
            borderRadius: new BorderRadius.circular(8.0),
            border: new Border.all(
              width: 1.0,
              color: Color.fromRGBO(192, 192, 192, 0.2),
            )
        ),
        child: Center(
            child: Image.asset(_image, height: 103.0,width: 160.0)
        ),
      ),
    );
  }

}
