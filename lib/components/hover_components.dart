import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:web_application/model/data_model.dart';
import 'package:web_application/res/constant.dart';

class HoverComponents extends StatelessWidget {
  const HoverComponents({
    super.key,
    required this.projectModel,
  });

  // final String googleLink;
  // final String githubLink;
  // final String webLink;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 200,
      ),
      onHover: (event) {},
      child: Container(
        height: 200,
        width: 200,
        color: bodyTextColor,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "asset/ic_lime_back.png",
              height: 150,
            ),
            SizedBox(
              height: 8,
            ),
            Text(projectModel.name),
            SizedBox(height: 8),
            SizedBox(
              height: 8,
            ),
          ],
        )),
      ),
    );
  }
}
