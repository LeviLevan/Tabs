import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/item/offer_item_widget.dart';

class OfferTabs extends StatelessWidget {

  final List<Widget> offerList = <Widget>[
    OfferItem("assets/image_20.png"),
    OfferItem("assets/image_22.png"),
    OfferItem("assets/image_38.png"),
    OfferItem("assets/image_20.png"),
    OfferItem("assets/image_22.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Wrap(
              direction: Axis.horizontal,
                children: offerList,
            ),
          )
        ],
      ),
    );
  }
}
