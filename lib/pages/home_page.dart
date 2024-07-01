// // ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import 'package:travel_app/misc/colors.dart';
// import 'package:travel_app/pages/detail_page.dart';
// import 'package:travel_app/pages/navpages/login_page.dart';
// import 'package:travel_app/widgets/app_large_text.dart';
// import 'package:travel_app/widgets/app_text.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   var images = {
//     "ballooning.png": "Ballooning",
//     "hiking.png": "Hiking",
//     "kayaking.png": "Kayaking",
//     "snorkeling.png": "Snorkeling"
//   };

//   List mountImages = ["mount_canada.jpg", "mount_newzea.jpg", "mount_usa.jpg"];
//   List placenames = ["Mount Robson", "Mount Taranki", "Lake Alabaster"];
//   List countries = ["Canada", "Newzealand", "United States"];
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//         body: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         //menu text
//         Container(
//           padding: const EdgeInsets.only(top: 10, left: 10),
//           child: Container(
//             decoration: BoxDecoration(
//                 // border: Border.all(color: AppColors.textColor2),
//                 ),
//             width: double.maxFinite,
//             height: 55,
//             child: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(
//                     Icons.arrow_back,
//                     size: 25,
//                     color: AppColors.mainColor,
//                   ),
//                 ),
//                 // SizedBox(
//                 //   width: 40,
//                 // ),
//                 // AppLargeText(
//                 //   text: "Travelling",
//                 // ),
//                 Expanded(child: Container()),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => LoginPage()));
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(right: 20),
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: AppColors.textColor2)),
//                     child: Icon(
//                       Icons.person,
//                       color: AppColors.mainColor,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         //discover text
//         Container(
//           margin: const EdgeInsets.only(left: 20),
//           child: AppLargeText(text: "Discover"),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         //tabbar
//         Container(
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: TabBar(
//                 labelPadding: const EdgeInsets.only(left: 20, right: 20),
//                 controller: _tabController,
//                 labelColor: Colors.black,
//                 unselectedLabelColor: Colors.grey,
//                 isScrollable: true,
//                 indicatorSize: TabBarIndicatorSize.label,
//                 //    CircleTabIndicator(color: AppColors.mainColor, radius: 4),
//                 tabs: [
//                   Tab(text: "Places"),
//                   Tab(text: "Inspiration"),
//                   Tab(text: "Emotions"),
//                 ]),
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           padding: const EdgeInsets.only(left: 20),
//           height: 350,
//           width: double.maxFinite,
//           child: TabBarView(controller: _tabController, children: [
//             ListView.builder(
//               itemCount: 3,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (BuildContext, int index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => DetailPage(
//                                   name: placenames[index],
//                                   place: countries[index],
//                                   image: mountImages[index],
//                                 )));
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.only(right: 15, top: 10),
//                     width: 200,
//                     height: 300,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.white,
//                         image: DecorationImage(
//                             image: AssetImage("img/" + mountImages[index]),
//                             fit: BoxFit.cover)),
//                     child: Container(
//                       margin: const EdgeInsets.only(left: 20, bottom: 20),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           AppText(
//                             text: placenames[index],
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_on,
//                                 color: Colors.white,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               AppText(
//                                 text: countries[index],
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//                 //Cubit Change
//                 // return Container(
//                 //   margin: const EdgeInsets.only(right: 15, top: 10),
//                 //   width: 200,
//                 //   height: 300,
//                 //   decoration: BoxDecoration(
//                 //       borderRadius: BorderRadius.circular(20),
//                 //       color: Colors.white,
//                 //       image: DecorationImage(
//                 //           image: AssetImage("img/mount_canada.jpg"),
//                 //           fit: BoxFit.cover)),
//                 // );
//               },
//             ),
//             Text("There"),
//             Text("Bye")
//           ]),
//         ),
//         SizedBox(
//           height: 35,
//         ),
//         Container(
//           margin: const EdgeInsets.only(right: 20, left: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               AppLargeText(
//                 text: "Explore more",
//                 size: 22,
//               ),
//               AppText(text: "See all", color: AppColors.textColor1)
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 25,
//         ),
//         Container(
//             height: 120,
//             width: double.maxFinite,
//             margin: const EdgeInsets.only(left: 20),
//             child: ListView.builder(
//                 itemCount: 4,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (_, index) {
//                   return Container(
//                     margin: const EdgeInsets.only(right: 30),
//                     child: Column(
//                       children: [
//                         Container(
//                           // margin: const EdgeInsets.only(right: 50),
//                           width: 65,
//                           height: 65,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.white54,
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "img/" + images.keys.elementAt(index),
//                                   ),
//                                   // "img/mount_canada.jpg"
//                                   fit: BoxFit.cover)),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           child: AppText(
//                             // text: "Hiking",
//                             text: images.values.elementAt(index),
//                             color: AppColors.textColor2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }))
//       ],
//     ));
//   }
// }

// // class CircleTabIndicator extends Decoration {
// //   final Color color;
// //   double radius;

// //   CircleTabIndicator({required this.color, required this.radius});
// //   @override
// //   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
// //     // TODO: implement createBoxPainter
// //     throw _CirclePainter(color: color, radius: radius);
// //   }
// // }

// // class _CirclePainter extends BoxPainter {
// //   final Color color;
// //   double radius;

// //   _CirclePainter({required this.color, required this.radius});
// //   @override
// //   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
// //     // TODO: implement paint
// //     Paint _paint = Paint();
// //     _paint.color = color;
// //     _paint.isAntiAlias = true;
// //     canvas.drawCircle(offset, radius, _paint);
// //   }
// // }

// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/navpages/login_page.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "ballooning.png": "Ballooning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkeling.png": "Snorkeling"
  };

  List mountImages = ["mount_canada.jpg", "mount_newzea.jpg", "mount_usa.jpg"];
  List placenames = ["Mount Robson", "Mount Taranki", "Lake Alabaster"];
  List countries = ["Canada", "Newzealand", "United States"];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menu and user icon
            Container(
              padding: EdgeInsets.only(
                  top: screenSize.height * 0.05, left: 10, right: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: screenSize.width * 0.065,
                      color: AppColors.mainColor,
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                      width: screenSize.width * 0.1,
                      height: screenSize.width * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.textColor2),
                      ),
                      child: Icon(
                        Icons.person,
                        color: AppColors.mainColor,
                        size: screenSize.width * 0.06,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            // Discover text
            Container(
              margin: EdgeInsets.only(left: screenSize.width * 0.05),
              child: AppLargeText(
                text: "Discover",
                size: screenSize.width * 0.08,
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            // TabBar
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            // TabBarView
            Container(
              padding: EdgeInsets.only(left: 20),
              height: screenSize.height * 0.45,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                name: placenames[index],
                                place: countries[index],
                                image: mountImages[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15, top: 10),
                          width: screenSize.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("img/" + mountImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: placenames[index],
                                  color: Colors.white,
                                  size: screenSize.width * 0.05,
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: screenSize.width * 0.04,
                                    ),
                                    SizedBox(width: 5),
                                    AppText(
                                      text: countries[index],
                                      color: Colors.white,
                                      size: screenSize.width * 0.04,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Text("Inspiration"),
                  Text("Emotions"),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.04),
            // Explore more section
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore more",
                    size: screenSize.width * 0.06,
                  ),
                  AppText(
                    text: "See all",
                    color: AppColors.textColor1,
                    size: screenSize.width * 0.04,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            // Horizontal list of activities
            Container(
              height: screenSize.height * 0.15,
              margin: EdgeInsets.only(left: screenSize.width * 0.05),
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: screenSize.width * 0.08),
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width * 0.15,
                          height: screenSize.width * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                  "img/" + images.keys.elementAt(index)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        AppText(
                          text: images.values.elementAt(index),
                          color: AppColors.textColor2,
                          size: screenSize.width * 0.04,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
