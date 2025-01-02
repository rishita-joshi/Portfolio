import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:web_application/components/footer_components.dart';

import '../controller/controllers.dart';
import '../res/constant.dart';
import '../view/refactors.dart';
import 'navigation_button_list.dart';
import 'top_navigation_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: positioned == 3 ? FooterComponents() : SizedBox(),
      backgroundColor: backgroundColor,

      // drawer: const CustomDrawer(),
      body: Column(
        children: [
          // kIsWeb && !Responsive.isLargeMobile(context)
          //     ? const SizedBox(
          //         height: defaultPadding * 2,
          //       )
          //     : const SizedBox(
          //         height: defaultPadding / 2,
          //       ),
          TopNavigationBar(),
          // if (CheckResponsive.isLargeMobile(context))
          //   Row(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     mainAxisSize: MainAxisSize.max,
          //     children: [
          //       NavigationButtonList(),
          //     ],
          //   ),
          Expanded(
            flex: 9,
            child: PageView(
              onPageChanged: (value) {
                positioned = value;
                setState(() {});
                print("New Page ${positioned}");
              },
              scrollDirection: Axis.vertical,
              controller: controller,
              children: [...widget.pages],
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               positioned == 0
//                   ? Color.fromARGB(255, 149, 175, 251)
//                   : Colors.white,
//               //: Colors.pink,
//               positioned == 0
//                   ? Color.fromARGB(255, 97, 161, 250)
//                   : Colors.white,
//             ],
//             begin: const FractionalOffset(0.0, 0.0),
//             end: const FractionalOffset(1.0, 0.0),
//           ),
//         ),
