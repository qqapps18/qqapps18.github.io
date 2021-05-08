import 'package:flutter/material.dart';
import 'package:qqapps_main_web/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String url = 'https://play.google.com/store/apps/developer?id=Sami+Pesate&hl=es&gl=US';
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),
      ),
      decoration: BoxDecoration(color: primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
