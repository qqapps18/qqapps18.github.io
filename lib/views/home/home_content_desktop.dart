import 'package:flutter/material.dart';
import 'package:qqapps_main_web/widgets/call_to_action/call_to_action.dart';
import 'package:qqapps_main_web/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Coursedetails(),
        Expanded(
            child: Center(
              child: CallToAction('Check the Apps'),
            ))
      ],
    );
  }
}
