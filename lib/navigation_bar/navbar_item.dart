import 'package:flutter/material.dart';
import 'package:qqapps_main_web/locator.dart';
import 'package:qqapps_main_web/services/navigation_service.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final String image;
//  final String url = 'https://play.google.com/store/apps/developer?id=Sami+Pesate&hl=es&gl=US';

  const NavBarItem(this.title, this.navigationPath, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
//        locator<NavigationService>().navigateTo(navigationPath);
        html.window.open(navigationPath,title,navigationPath);
      },
      child: Container(
      height: 80.0,
      width: 150.0,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    image),
    fit: BoxFit.fitWidth,
    ),
        // child: Text(
        //   title,
        //   style: TextStyle(fontSize: 18),
        // ),
      ),
    ));
  }
}