import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {

  final String image;

  OfferItem(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: ShaderMask(
        shaderCallback:(Rect){
          return LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [Color.fromRGBO(0, 0, 0, 0.1), Color.fromRGBO(0, 0, 0, 0.4)],
              stops: [0.5, 0.9]
          ).createShader(Rect);
        },
        blendMode: BlendMode.srcATop,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
