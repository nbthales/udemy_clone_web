import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
//const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://img-c.udemycdn.com/course/240x135/1764438_44b7_5.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints){
//          print(constraints.biggest);
              return AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                minFontSize: 3,
//              maxLines: 2,
//              minFontSize: 1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        Text('Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
