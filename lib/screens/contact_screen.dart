import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/components/contact_components.dart';
import 'package:web_application/components/social_icons_components.dart';
import 'package:web_application/view/refactors.dart';
import 'dart:math' as math;
import '../res/constant.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward(); // Start the animation automatically
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CheckResponsive.isMobile(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ContactTitleComponents(),
                  SizedBox(
                    height: 20,
                  ),
                  ContactComponents()
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ContactTitleComponents(),
                  ).paddingSymmetric(vertical: 20),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: ContactComponents()),
                ],
              ).paddingSymmetric(horizontal: 20),
        Positioned(
          top: -250,
          right: -250,
          child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
              child: Image.asset("asset/ic_contact_animation.png")),
        ),
      ],
    );
  }
}
