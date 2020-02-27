import 'package:flutter/material.dart';

class TabContentOffers extends StatefulWidget {

    String _imageUrl1 = '';
    String _imageUrl2 = '';
    String _imageUrl3 = '';
    String _imageUrl4 = '';
    String _imageUrl5 = '';
    String _imageUrl6 = '';

  TabContentOffers({String imageUrl1,String imageUrl2,String imageUrl3,
    String imageUrl4,String imageUrl5, String imageUrl6}){
    _imageUrl1 = imageUrl1;
    _imageUrl2 = imageUrl2;
    _imageUrl3 = imageUrl3;
    _imageUrl4 = imageUrl4;
    _imageUrl5 = imageUrl5;
    _imageUrl6 = imageUrl6;
  }

  @override
  _TabContentOffersState createState() => _TabContentOffersState();
}

class _TabContentOffersState extends State<TabContentOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl1, 160.0, 231.0),
              offersImage(widget._imageUrl2, 160.0, 231.0)
            ],
          ),
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl3, 330.0, 184.0)
            ],
          ),
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl4, 160.0, 231.0),
              offersImage(widget._imageUrl5, 160.0, 231.0)
            ],
          ),
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl6, 330.0, 184.0)
            ],
          ),
        ],
      ),
    );
  }

  Widget offersImage(image,width,height){
    String _image = '';
    double _width;
    double _height;
    _image = image;
    _height = height;
    _width = width;

    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Center(
            child: Image.asset(_image, width: _width, height: _height)
        ),
      ),
    );
  }

}
