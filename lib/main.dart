import 'package:flutter/material.dart';
import 'package:flutter_tabs/ui/screens/main_screen.dart';

void main() => runApp( TabsApplication() );

class TabsApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
