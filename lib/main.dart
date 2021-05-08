import 'package:flutter/material.dart';
import 'package:qqapps_main_web/views/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QQapps18',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutTemplate(),
    );
  }
}
