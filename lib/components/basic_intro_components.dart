import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/view/refactors.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../res/constant.dart';
import 'social_icons_components.dart';

class BasicIntroComponents extends StatelessWidget {
  const BasicIntroComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Hii!, I am ",
          style: GoogleFonts.tajawal(
              textStyle: primaryTextStyle(
                  size: 36, weight: FontWeight.w400, color: Colors.white)),
        ),
        Text(
          "Rishita Joshi ,",
          style: GoogleFonts.poppins(
              textStyle: primaryTextStyle(
            color: Colors.lime.shade400,
            //const Color.fromARGB(255, 80, 207, 253),
            weight: FontWeight.w700,
            // primaryColors,
            size: 42,
          )),
        ),
        TextAnimator(
          'Flutter Devloper',
          style: GoogleFonts.tajawal(
            textStyle: primaryTextStyle(
              color: Colors.white,
              weight: FontWeight.w700,
              size: 24,
            ),
          ),
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 1000)),
          atRestEffect: WidgetRestingEffects.none(),
          outgoingEffect: WidgetTransitionEffects.outgoingSlideOutToRight(),
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          width: CheckResponsive.isMobile(context)
              ? MediaQuery.of(context).size.width / 1
              : MediaQuery.of(context).size.width / 2,
          child: Text(
            "A self-taught developer with 3 years of experience in the technology used to construct mobile applications and Deploye the application in Google Play Console and Apple console. ",
            style: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 20),
        SocialIconsComponents(),
        SizedBox(height: 30),
        // ElevatedButton.icon(
        //     style: ButtonStyle(
        //       backgroundColor: WidgetStatePropertyAll(primaryColor),
        //       shape: WidgetStatePropertyAll(
        //         RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(4.0),
        //         ),
        //       ),
        //     ),
        //     icon: Icon(
        //       Icons.document_scanner,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {},
        //     label: Text(
        //       "Download Resume",
        //       style: boldTextStyle(size: 16),
        //     ).paddingAll(6)),
      ],
    ).paddingSymmetric(horizontal: 30);
  }
}
