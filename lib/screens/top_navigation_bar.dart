import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../res/constant.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        // const Spacer(),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Rishita",
            style: GoogleFonts.dancingScript(
                textStyle: TextStyle(color: Colors.white, fontSize: 40)),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        NavigationButtonList(),
        // if (!CheckResponsive.isLargeMobile(context))
        //   const NavigationButtonList(),
        // const SizedBox(
        //   width: 100,
        // ),
        // // const ConnectButton(),
        //const Spacer(),
      ],
    );
  }
}
