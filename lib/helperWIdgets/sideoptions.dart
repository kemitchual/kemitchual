import 'package:flutter/material.dart';

import '../constants.dart';

class SideMenu extends StatelessWidget {
  final String title;
  final String logoUrls;
  const SideMenu({Key? key, required this.title, required this.logoUrls})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 200,
      child:ListTile(
        
      leading: Image.network(logoUrls,scale: 35,color: Colors.white,),
      trailing: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
    ));
  }
}
