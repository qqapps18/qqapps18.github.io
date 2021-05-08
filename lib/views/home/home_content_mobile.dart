import 'package:flutter/material.dart';
import 'package:qqapps_main_web/widgets/call_to_action/call_to_action.dart';
import 'package:qqapps_main_web/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Coursedetails(),
        SizedBox(height: 80,),
        CallToAction('Check the Apps'),
      ],
    );
  }
}
