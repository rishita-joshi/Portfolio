import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/main.dart';
import 'package:web_application/res/constant.dart';
import 'dart:math' as math;
import '../components/skills_components.dart';
import '../view/refactors.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> with TickerProviderStateMixin {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isVisible = true;
      });
    });

    appStore.skillsList.clear();
    appStore.addSkillsData();
  }

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 20),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Tech Stack",
              style: boldTextStyle(color: primaryColor, size: 30),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: CheckResponsive.isMobile(context)
                  ? MediaQuery.of(context).size.width / 1.8
                  : MediaQuery.of(context).size.width / 2.5,
              child: Text(
                "Change is inevitable, so I keep on exploring new technology, learn it in a minimal possible way and then build something out of it to see how well I did :)",
                style: primaryTextStyle(color: white),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: CheckResponsive.isMobile(context)
                      ? MediaQuery.of(context).size.width / 1.9
                      : MediaQuery.of(context).size.width / 2.5,
                  // height: MediaQuery.of(context).size.height / 2.5,
                  child: SkillComponents(),
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 20),
        SizedBox(width: 90),
        CheckResponsive.isMobile(context)
            ? SizedBox()
            : AnimatedOpacity(
                opacity: isVisible ? 1.0 : 0.0,
                duration: Duration(seconds: 4),
                child: Image.asset(
                  ImageClass().ic_skills,
                  height: MediaQuery.of(context).size.height / 1,
                  width: MediaQuery.of(context).size.width / 2.6,
                ),
              )
      ],
    );
  }
}
