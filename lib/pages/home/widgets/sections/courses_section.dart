import 'package:flutter/material.dart';
import 'package:udemy_clone_web/breakpoints.dart';
import 'package:udemy_clone_web/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
//const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
//          childAspectRatio: 0.5,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}
