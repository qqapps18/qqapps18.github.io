import 'package:flutter/material.dart';
import 'package:qqapps_main_web/navigation_bar/navigation_bar.dart';
import 'package:qqapps_main_web/routing/route_names.dart';
import 'package:qqapps_main_web/routing/router.dart';
import 'package:qqapps_main_web/services/navigation_service.dart';
import 'package:qqapps_main_web/widgets/centered_view/centered_view.dart';
import 'package:qqapps_main_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
