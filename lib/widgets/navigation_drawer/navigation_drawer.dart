import 'package:flutter/material.dart';
import 'package:qqapps_main_web/routing/route_names.dart';
import 'package:qqapps_main_web/widgets/navigation_drawer/drawer_item.dart';

import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  final String urlGoogle =
      'https://play.google.com/store/apps/developer?id=Sami+Pesate&hl=es&gl=US';
  final String urlApple = 'https://www.apple.com/es/ios/app-store/';
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          // DrawerItem('Episode', Icons.videocam, EpisodesRoute, 'images/logoplaystore.png', urlGoogle),
          // DrawerItem('About', Icons.help, AboutRoute, 'images/logoappstore.png',urlApple),
          DrawerItem('Episode', Icons.videocam, urlGoogle, 'images/logoplaystore.png'),
          DrawerItem('About', Icons.help, urlApple, 'images/logoappstore.png'),

        ],
      ),
    );
  }
}
