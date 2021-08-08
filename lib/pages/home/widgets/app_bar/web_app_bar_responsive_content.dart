import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
//const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints){
//        print('biggest ${constraints.biggest} smallets ${constraints.smallest}');
//        return Container(height: 400, width: 200, color: Colors.red);
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[500],
                        onPressed: (){},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if(constraints.maxWidth >= 400)...[
                const SizedBox(width: 32),
                FlatButton(
                  onPressed: (){},
                  child: Text('Aprender'),
                  textColor: Colors.white,
                ),
              ],
              if(constraints.maxWidth >= 500)...[
                const SizedBox(width: 8),
                FlatButton(
                  onPressed: (){},
                  child: Text('Flutter'),
                  textColor: Colors.white,
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
