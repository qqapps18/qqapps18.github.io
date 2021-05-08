import 'package:flutter/material.dart';
import 'package:qqapps_main_web/routing/route_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final String urlGoogle =
      'https://play.google.com/store/apps/developer?id=Sami+Pesate&hl=es&gl=US';
  final String urlApple = 'https://www.apple.com/es/ios/app-store/';
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Google Play Apps', urlGoogle, 'images/logoplaystore.png'),
//              NavBarItem('Episode', EpisodesRoute),
              SizedBox(
                width: 10,
              ),
              NavBarItem('App Store', urlApple, 'images/logoappstore.png'),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
