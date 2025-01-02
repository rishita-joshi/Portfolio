import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/main.dart';
import 'package:web_application/res/constant.dart';

import '../view/refactors.dart';

class SkillComponents extends StatelessWidget {
  SkillComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      spacing: CheckResponsive.isMobile(context) ? 10.0 : 20.0,
      runAlignment: WrapAlignment.start,
      runSpacing: CheckResponsive.isMobile(context) ? 10.0 : 20.0,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: appStore.skillsList.map(
        (e) {
          return Chip(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            elevation: 20,
            padding: EdgeInsets.all(8),
            backgroundColor: primaryColor,
            avatar: Image.asset(
              e.link,
              color: blackColor,
            ),
            label: Text(
              e.name,
              style: primaryTextStyle(),
            ), //Text
          );
        },
      ).toList(),
    );
  }
}
