import 'package:flutter/material.dart';

class Sides extends StatelessWidget {
  final String title;
  final IconData iconData;

  const Sides({Key? key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    var oo = 1118;
    bool no;
    if (screenSize > oo) {
      no = true;
    } else {
      no = false;
    }

    return Container(
        alignment: Alignment.center,
        width: 200,
        child: ListTile(
          leading: Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
          trailing: no?  
          Container(
            width: 120,
            alignment: Alignment.centerLeft,
            child: 
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.left,
            )
          )
          : null,
        ));
  }
}
