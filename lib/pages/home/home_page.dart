import 'package:flutter/material.dart';
import 'package:udemy_clone_web/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:udemy_clone_web/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
//const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
//      print('biggest ${constraints.biggest} smallest ${constraints.smallest}');
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
          ),
          drawer: Drawer(),
        );
      },
    );
  }
}
