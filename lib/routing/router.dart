import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qqapps_main_web/routing/route_names.dart';
import 'package:qqapps_main_web/views/about/about_view.dart';
import 'package:qqapps_main_web/views/episodes/episodes_view.dart';
import 'package:qqapps_main_web/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case HomeRoute:
      return _getPageRoute(AboutView());
    case HomeRoute:
      return _getPageRoute(EpisodesView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}