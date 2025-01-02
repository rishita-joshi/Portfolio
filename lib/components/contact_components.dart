import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/view/refactors.dart';

import '../res/constant.dart';
import 'social_icons_components.dart';

class ContactComponents extends StatelessWidget {
  const ContactComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 70,
          width: CheckResponsive.isMobile(context)
              ? MediaQuery.of(context).size.width / 1
              : MediaQuery.of(context).size.width / 3,
          child: Card(
            color: bodyTextColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 20,
            child: ListTile(
              visualDensity: VisualDensity.compact,
              tileColor: bodyTextColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              contentPadding: EdgeInsets.all(10),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: primaryColor,
              ),
              title: Text(
                "rishitajoshi04@gmail.com",
                style: primaryTextStyle(color: primaryColor),
              ),
              leading: Icon(
                Icons.email,
                color: primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          width: CheckResponsive.isMobile(context)
              ? MediaQuery.of(context).size.width / 1
              : MediaQuery.of(context).size.width / 3,
          child: Card(
            color: bodyTextColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 20,
            child: ListTile(
              visualDensity: VisualDensity.compact,
              tileColor: bodyTextColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              contentPadding: EdgeInsets.all(10),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: primaryColor,
              ),
              title: Text(
                "+91 9484442358",
                style: primaryTextStyle(color: primaryColor),
              ),
              leading: Icon(
                Icons.call,
                color: primaryColor,
              ),
            ),
          ),
        ),
        //    SizedBox(
        //      height: 30,
        //      width: MediaQuery.of(context).size.width / 1,
        //      child: Divider(
        //        color: Colors.grey.shade500,
        //      ).paddingSymmetric(),
        //    ),
        SizedBox(height: 10),
        SocialIconsComponents(),
      ],
    ).paddingSymmetric(horizontal: 8);
  }
}

class ContactTitleComponents extends StatelessWidget {
  const ContactTitleComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Get in Touch",
          style: boldTextStyle(color: primaryColor, size: 30),
        ),
        SizedBox(height: 20),
        Text(
          "Let's build something together :)",
          style: primaryTextStyle(color: whiteColor),
        ),
      ],
    );
  }
}
