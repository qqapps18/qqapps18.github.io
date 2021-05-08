import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Coursedetails extends StatelessWidget {
  const Coursedetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 70;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 18;

        return Container(
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ours \n   Apps',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                  color: Colors.deepPurple,
                ),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'All our applications are designed not to be just another'
                ' application, they must compliment you in some way and enrich'
                ' you either in spirit or soul, providing you with spiritual'
                ' enrichment, fun, and recreation, information, culture, etc.',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
              ),
            ],
          ),
        );
      },
    );
  }
}
