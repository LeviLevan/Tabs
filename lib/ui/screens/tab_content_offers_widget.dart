import 'package:flutter/material.dart';

class TabContentOffers extends StatefulWidget {

    String _imageUrl1 = '';
    String _imageUrl2 = '';
    String _imageUrl3 = '';
    String _imageUrl4 = '';
    String _imageUrl5 = '';

  TabContentOffers({String imageUrl1,String imageUrl2,String imageUrl3,
    String imageUrl4,String imageUrl5, String imageUrl6}){
    _imageUrl1 = imageUrl1;
    _imageUrl2 = imageUrl2;
    _imageUrl3 = imageUrl3;
    _imageUrl4 = imageUrl4;
    _imageUrl5 = imageUrl5;
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
              offersImage(widget._imageUrl1),
              offersImage(widget._imageUrl2)
            ],
          ),
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl3)
            ],
          ),
          Row(
            children: <Widget>[
              offersImage(widget._imageUrl4),
              offersImage(widget._imageUrl5)
            ],
          ),
        ],
      ),
    );
  }

  Widget offersImage(image){
    String _image = '';
    _image = image;

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(_image, fit: BoxFit.cover),
        ),
      ),
    );
  }

}
