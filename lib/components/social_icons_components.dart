import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/constant.dart';

class SocialIconsComponents extends StatelessWidget {
  const SocialIconsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          color: bodyTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          child: Image.asset(
            ImageClass().ic_github,
            height: 24,
            color: whiteColor,
            width: 24,
          ).paddingAll(10),
        ).onTap(() async {
          final Uri url = Uri.parse('https://github.com/rishita-joshi');

          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
        }),
        SizedBox(width: 20),
        Card(
          color: bodyTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          child: Image.asset(
            ImageClass().ic_linkedin,
            height: 24,
            color: whiteColor,
            width: 24,
          ).paddingAll(10),
        ).onTap(() async {
          final Uri url =
              Uri.parse('https://www.linkedin.com/in/joshi-rishita9/');

          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
          //
        }),
        SizedBox(width: 20),
        Card(
          elevation: 20,
          color: bodyTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            ImageClass().ic_stackOverflow,
            color: whiteColor,
            height: 24,
            width: 24,
          ).paddingAll(10),
        ).onTap(() async {
          final Uri url = Uri.parse(
              'https://meta.stackoverflow.com/users/17552057/rishita-joshi');

          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
        }),
        SizedBox(width: 20),
        Card(
          elevation: 20,
          color: bodyTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            ImageClass().ic_medium,
            color: whiteColor,
            height: 24,
            width: 24,
          ).paddingAll(10),
        ).onTap(() async {
          final Uri url = Uri.parse('https://medium.com/@rishitajoshi04');

          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
        }),
      ],
    );
  }
}
