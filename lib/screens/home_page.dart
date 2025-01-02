import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:web_application/res/constant.dart';
import 'package:web_application/screens/project_page.dart';
import 'package:web_application/screens/contact_screen.dart';
import 'package:web_application/screens/skills_page.dart';
import 'dart:html' as html;
import '../main.dart';
import 'intro/intro_screen.dart';
import 'main_view.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//   late DialogFlowtter dialogFlowtter;
  final TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  void syncInputFocus(TextEditingController controller) {
    final element = html.document.activeElement;
    if (element != null && element is html.InputElement) {
      element.focus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Stack(
        children: [
          MainView(pages: [
            Introduction(),
            SkillPage(),
            ProjectPage(),
            ContactScreen(),
            // AiAssitancePage()
          ]),
        ],
      );
    });
  }
}
