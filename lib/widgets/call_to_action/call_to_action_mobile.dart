import 'package:flutter/material.dart';
import 'package:qqapps_main_web/constants/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),
      ),
      decoration: BoxDecoration(color:  primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}