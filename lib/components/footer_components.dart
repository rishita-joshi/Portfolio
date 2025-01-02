import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class FooterComponents extends StatefulWidget {
  const FooterComponents({super.key});

  @override
  State<FooterComponents> createState() => _FooterComponentsState();
}

class _FooterComponentsState extends State<FooterComponents>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true); // Repeat animation
    _opacityAnimation =
        Tween<double>(begin: 0.3, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey.shade800),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Developed By Rishita With",
            style: GoogleFonts.poppins(
              textStyle: primaryTextStyle(color: Colors.white, size: 20),
            ),
          ),
          FadeTransition(
            opacity: _opacityAnimation,
            child: Icon(
              Icons.favorite,
              color: Colors.blueAccent,
              size: 50,
            ),
          ),
          Text(
            "Flutter",
            style: GoogleFonts.poppins(
              textStyle: primaryTextStyle(color: Colors.white, size: 20),
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 20, vertical: 16),
    );
  }
}
