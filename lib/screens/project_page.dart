import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_application/res/constant.dart';

import '../components/hover_components.dart';
import '../main.dart';
import '../view/refactors.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int? _hoveredIndex;

  @override
  void initState() {
    super.initState();
    appStore.addProjectList();
  }

  @override
  Widget build(BuildContext context) {
//     final int crossAxisCount = CheckResponsive.isLargeMobile(context)
//         ? 1
//         : CheckResponsive.isMediumSized(context)
//             ? 2
//             : 3;
//     final double childAspectRatio = CheckResponsive.isLargeMobile(context)
//         ? 1.3
//         : CheckResponsive.isMediumSized(context)
//             ? 0.8
//             : 1.5; // Aspect ratio: width/height

//     // Calculate grid item width
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final double gridItemWidth = screenWidth / crossAxisCount;

//     // Calculate grid item height based on aspect ratio
//     final double gridItemHeight = childAspectRatio - 100;
    // gridItemWidth / childAspectRatio;
    return Column(
      children: [
        Text(
          "Projects",
          style: boldTextStyle(color: primaryColor, size: 30),
        ),
        SizedBox(height: 20),
        Text(
          "Some of my best work :)",
          style: primaryTextStyle(color: white),
        ),
        SizedBox(height: 20),
        //    GridView.builder(
        //      padding: EdgeInsets.all(10),
        //      itemCount: appStore.projectList.length,
        //      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //        mainAxisSpacing: 40.0,
        //        crossAxisSpacing: 40.0,
        //        crossAxisCount: crossAxisCount,
        //        childAspectRatio: childAspectRatio,
        //      ),
        //      itemBuilder: (BuildContext context, int index) {
        //        return MouseRegion(
        //          onEnter: (_) => setState(() {
        //            _hoveredIndex = index; // Set the hovered index
        //          }),
        //          onExit: (_) => setState(() {
        //            _hoveredIndex = null; // Clear the hovered index
        //          }),
        //          child: AnimatedContainer(
        //            duration: const Duration(milliseconds: 200),
        //            decoration: BoxDecoration(
        //              color: Colors.black54,
        //              border: Border.all(
        //                color: _hoveredIndex == index
        //                    ? primaryColor
        //                    : Colors.transparent,
        //                width: 2,
        //              ),
        //              borderRadius: BorderRadius.circular(10),
        //              boxShadow: [
        //                BoxShadow(
        //                  color: bodyTextColor,
        //                  blurRadius: 4,
        //                  spreadRadius: 1,
        //                ),
        //              ],
        //            ),
        //            child: Column(
        //              crossAxisAlignment: CrossAxisAlignment.start,
        //              mainAxisAlignment: MainAxisAlignment.start,
        //              mainAxisSize: MainAxisSize.max,
        //              children: [
        //                Image.asset(
        //                  appStore.projectList[index].imageLink,
        //                  height: 160,
        //                  width: gridItemWidth,
        //                  // MediaQuery.of(context).size.width / 3,
        //                  fit: BoxFit.cover,
        //                ).cornerRadiusWithClipRRectOnly(topLeft: 10, topRight: 10),
        //                Text(
        //                  appStore.projectList[index].name,
        //                  style: GoogleFonts.poppins(
        //                    textStyle: primaryTextStyle(
        //                      color: whiteColor,
        //                    ),
        //                  ),
        //                ).paddingAll(10),
        //                Row(
        //                  crossAxisAlignment: CrossAxisAlignment.start,
        //                  mainAxisAlignment: MainAxisAlignment.start,
        //                  mainAxisSize: MainAxisSize.max,
        //                  children: [
        //                    appStore.projectList[index].googleLink.isEmpty
        //                        ? SizedBox()
        //                        : Chip(
        //                            padding: EdgeInsets.all(2),
        //                            shape: RoundedRectangleBorder(
        //                                borderRadius: BorderRadius.circular(8),
        //                                side: BorderSide(color: bodyTextColor)),
        //                            backgroundColor: bodyTextColor,
        //                            avatar: Image.asset(
        //                              ImageClass().ic_gplay,
        //                              height: 18,
        //                              width: 18,
        //                              color: primaryColor,
        //                            ),
        //                            label: Text(
        //                              "Play",
        //                              style: primaryTextStyle(color: primaryColor),
        //                            )),
        //                    appStore.projectList[index].webLink.isEmpty
        //                        ? SizedBox()
        //                        : Chip(
        //                            avatar: Image.asset(""),
        //                            label: Text("WebSite")),
        //                    appStore.projectList[index].githubLink.isEmpty
        //                        ? SizedBox()
        //                        : Chip(
        //                            avatar: Image.asset(""), label: Text("Github")),
        //                  ],
        //                ).paddingSymmetric(horizontal: 10),
        //                SizedBox(
        //                  height: 10,
        //                ),
        //              ],
        //            ),
        //          ),
        //        );
        //      },
        //    ).expand(),

        LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            int crossAxisCount = 1; // Default for small screens
            if (screenWidth > 500) {
              crossAxisCount = 2; // Medium screens
            }
            if (screenWidth > 1024) {
              crossAxisCount = 3; // Large screens
            }

            double childAspectRatio = 1.1;

            return GridView.builder(
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: childAspectRatio,
              ),
              padding: EdgeInsets.all(16),
              itemCount:
                  appStore.projectList.length, // Adjust for your data source
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (_) => setState(() {
                    _hoveredIndex = index; // Set the hovered index
                  }),
                  onExit: (_) => setState(() {
                    _hoveredIndex = null; // Clear the hovered index
                  }),
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        border: Border.all(
                          color: _hoveredIndex == index
                              ? primaryColor
                              : Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: bodyTextColor,
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.asset(
                              appStore.projectList[index].imageLink,
                              //  height: 160,
                              //MediaQuery.of(context).size.height / 3.5,
                              //  width: ,
                              // MediaQuery.of(context).size.width / 3,
                              fit: BoxFit.cover,
                            ).cornerRadiusWithClipRRectOnly(
                                topLeft: 10, topRight: 10),
                          ),
                          Text(
                            appStore.projectList[index].name,
                            style: GoogleFonts.poppins(
                              textStyle: primaryTextStyle(
                                color: whiteColor,
                              ),
                            ),
                          ).paddingAll(10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              appStore.projectList[index].googleLink.isEmpty
                                  ? SizedBox()
                                  : Chip(
                                      padding: EdgeInsets.all(2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          side:
                                              BorderSide(color: bodyTextColor)),
                                      backgroundColor: bodyTextColor,
                                      avatar: Image.asset(
                                        ImageClass().ic_gplay,
                                        height: 18,
                                        width: 18,
                                        color: primaryColor,
                                      ),
                                      label: Text(
                                        "Play",
                                        style: primaryTextStyle(
                                            color: primaryColor),
                                      )).onTap(() async {
                                      final Uri url = Uri.parse(appStore
                                          .projectList[index].googleLink);

                                      if (!await launchUrl(url)) {
                                        throw 'Could not launch $url';
                                      }
                                    }),
                              // appStore.projectList[index].webLink.isEmpty
                              //     ? SizedBox()
                              //     : Chip(
                              //             avatar: Icon(
                              //               Icons.web,
                              //               color: primaryColor,
                              //             ),
                              //             label: Text("WebSite"))
                              //         .onTap(() async {
                              //         final Uri url = Uri.parse(
                              //             appStore.projectList[index].webLink);

                              //         if (!await launchUrl(url)) {
                              //           throw 'Could not launch $url';
                              //         }
                              //       }),
                              appStore.projectList[index].githubLink.isEmpty
                                  ? SizedBox()
                                  : Chip(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          side:
                                              BorderSide(color: bodyTextColor)),
                                      backgroundColor: bodyTextColor,
                                      avatar: Image.asset(
                                        ImageClass().ic_github,
                                        color: primaryColor,
                                      ),
                                      label: Text(
                                        "Github",
                                        style: primaryTextStyle(
                                            color: primaryColor),
                                      )).onTap(() async {
                                      final Uri url = Uri.parse(appStore
                                          .projectList[index].githubLink);

                                      if (!await launchUrl(url)) {
                                        throw 'Could not launch $url';
                                      }
                                    }),
                            ],
                          ).paddingSymmetric(horizontal: 10),
                        ],
                      )),
                );

                //  Container(
                //    decoration: BoxDecoration(
                //      color: Colors.blueAccent,
                //      borderRadius: BorderRadius.circular(10),
                //    ),
                //    child: Center(
                //      child: Text(
                //        'Item $index',
                //        style: TextStyle(
                //          color: Colors.white,
                //          fontWeight: FontWeight.bold,
                //          fontSize: 16,
                //        ),
                //      ),
                //    ),
                //  );
              },
            );
          },
        ).expand(),
      ],
    ).paddingSymmetric(horizontal: 60);
  }
}
