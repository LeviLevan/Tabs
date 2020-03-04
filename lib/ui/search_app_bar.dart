import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget{

  List<Tab> _allTabs;
  SearchAppBar(this._allTabs);

   @override
  _SearchAppBarState createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(104.0);

}

class _SearchAppBarState extends State<SearchAppBar> {

  Widget appBarTitle = Text("Корпоратив");
  Icon actionIcon = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: (){
            setState(() {
              if(this.actionIcon.icon == Icons.search){
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white)
                  ),
                );
              } else {
                this.actionIcon = Icon(Icons.search);
                this.appBarTitle = Text('Корпоратив');
              }
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.info_outline,color: Colors.white),
          onPressed: (){},
        ),
      ],
      backgroundColor: Color(0xFF02AD58),
      bottom: TabBar(
        indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal:16.0)
        ),
        indicatorColor: Colors.white,
        tabs:widget._allTabs,
      ),
    );
  }
}
