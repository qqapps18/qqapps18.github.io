import 'package:flutter/material.dart';
import 'package:qqapps_main_web/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  final String image;
  const DrawerItem(this.title, this.icon, this.navigationPath,this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 30, top: 60),
    child: Row(
      children: [
//        Icon(icon),
        SizedBox(width: 30,),
        NavBarItem(title, navigationPath,image),
      ],
    ),
    );
  }
}
