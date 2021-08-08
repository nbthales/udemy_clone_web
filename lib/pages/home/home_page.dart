import 'package:flutter/material.dart';
import 'package:udemy_clone_web/breakpoints.dart';
import 'package:udemy_clone_web/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:udemy_clone_web/pages/home/widgets/app_bar/web_app_bar.dart';

import 'widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
//const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
//      print('biggest ${constraints.biggest} smallest ${constraints.smallest}');
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
          ),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1400,
//              maxHeight: 300,
              ),
//            child: Container(height: 1400, color: Colors.red),
              child: ListView(
                children: [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
