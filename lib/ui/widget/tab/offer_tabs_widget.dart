import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/widget/item/offer_item_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class OfferTabsWidget extends StatefulWidget {
  @override
  _OfferTabsWidgetState createState() => _OfferTabsWidgetState();
}

class _OfferTabsWidgetState extends State<OfferTabsWidget> {

//  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
//    const StaggeredTile.count(2, 3),
//    const StaggeredTile.count(2, 3),
//    const StaggeredTile.count(4, 2),
//    const StaggeredTile.count(2, 3),
//    const StaggeredTile.count(2, 3),
//    const StaggeredTile.count(1, 2),
//    const StaggeredTile.count(1, 1),
//    const StaggeredTile.count(3, 1),
//  ];

  final List<OfferItem> offerList =[
    OfferItem("assets/image_20.png"),
    OfferItem("assets/image_22.png"),
    OfferItem("assets/image_38.png", isGlobal: true,),
    OfferItem("assets/image_20.png"),
    OfferItem("assets/image_22.png"),
    OfferItem("assets/11.png", isGlobal: true),
    OfferItem("assets/11.png"),
    OfferItem("assets/11.png"),
  ];

//  final List<Widget> outList= [];
//
//  @override
//   void initState() {
//    super.initState();
//    for (var value in offerList) {
//      if(value.isGlobal){
//        outList.add(value);
//      } else {
//        outList.add(value);
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: StaggeredGridView.countBuilder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        crossAxisCount: 4,
        itemCount: this.offerList.length,
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage(this.offerList[index].image),
                  fit: BoxFit.cover
              )
          ),
        ),
        staggeredTileBuilder: (int index) =>
            this.offerList[index].staggeredTile,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
//    return StaggeredGridView.count(
//      crossAxisCount: 4,
//      staggeredTiles: _staggeredTiles,
//      children: offerList,
//      mainAxisSpacing: 4.0,
//      crossAxisSpacing: 4.0,
//      padding: const EdgeInsets.all(4.0),
//    );
//    return Center(
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: <Widget>[
//          Expanded(
//            child: Center(
//              child: Wrap(
//                direction: Axis.horizontal,
//                children: offerList,
//              ),
//            ),
//          )
//        ],
//      ),
//    );
  }
}


