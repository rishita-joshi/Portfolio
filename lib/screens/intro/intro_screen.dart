import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/components/basic_intro_components.dart';
import 'package:web_application/components/social_icons_components.dart';
import 'dart:math' as math;

import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../res/constant.dart';
import '../../view/refactors.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction>
    with TickerProviderStateMixin {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    // Start the animation after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isVisible = true;
      });
    });
  }

  late final AnimationController imageController = AnimationController(
    duration: Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        // Color(0xFF3E505D),
        body: Stack(
          children: [
            CheckResponsive.isMobile(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      //   AnimatedOpacity(
                      //       opacity: isVisible ? 1.0 : 0.0,
                      //       duration: Duration(seconds: 4),
                      //       child: Image.asset(
                      //         "asset/25.png",
                      //         height: 300,
                      //         width: 300,
                      //         //     height: MediaQuery.of(context).size.height / 2.4,
                      //         //     width: MediaQuery.of(context).size.width / 2.4,
                      //       )),
                      BasicIntroComponents(),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          BasicIntroComponents(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          AnimatedOpacity(
                            opacity: isVisible ? 1.0 : 0.0,
                            duration: Duration(seconds: 4),
                            child: Image.asset(
                              "asset/25.png",
                              height: 300,
                              width: 300,
                              //     heig1ht: MediaQuery.of(context).size.height / 2.4,
                              //     width: MediaQuery.of(context).size.width / 2.4,
                            ).paddingOnly(
                              top: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            Positioned(
                top: -250,
                left: -250,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _controller.value * 2.0 * math.pi,
                      child: child,
                    );
                  },
                  child: Image.asset(
                    "asset/circle_image.png",
                    height: 500,
                    width: 500,
                  ),
                )),
            Align(
              alignment: Alignment.bottomRight,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Image.asset(
                  "asset/circle_image.png",
                  height: 500,
                  width: 500,
                ),
              ),
            ),
          ],
        ));
  }
}
