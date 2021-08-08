import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
//const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      title: Text('Flutter'),
      centerTitle: true,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
      ],
    );
  }
}