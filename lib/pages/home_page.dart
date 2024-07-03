// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/navpages/login_page.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/nav_bar.dart';

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
                  top: screenSize.height * 0.01,
                  left: 10,
                  right: 10,
                  bottom: 5),
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
                  SizedBox(
                    width: screenSize.width * 0.2,
                  ),
                  AppText(text: "Travel With Love"),
                  SizedBox(
                    width: screenSize.width * 0.24,
                  ),
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
            // SizedBox(height: screenSize.height * 0.025),
            // Center(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(Icons.search_rounded),
            //       Container(
            //         padding: EdgeInsets.only(
            //             // left: screenSize.width * 0.05,
            //             right: screenSize.width * 0.05),
            //         constraints: BoxConstraints(
            //           maxWidth:
            //               screenSize.width * 0.9, // Set a smaller maximum width
            //           maxHeight: 40.0, // Set a smaller maximum height
            //         ),
            //         child: TextField(
            //           decoration: InputDecoration(
            //               hintText: "Where do you want to go?",
            //               border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(30),
            //               )),
            //           style: TextStyle(color: AppColors.textColor2),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: screenSize.height * 0.02),
            // Discover text
            Container(
              margin: EdgeInsets.only(left: screenSize.width * 0.05),
              child: AppLargeText(
                text: "Discover",
                size: screenSize.width * 0.08,
              ),
            ),

            SizedBox(height: screenSize.height * 0.01),
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
                  Tab(text: "Best Destination"),
                  Tab(text: "Hot Deals"),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),

            // TabBarView
            // SizedBox(height: screenSize.height * 0.02),
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
      //Nav Bar here
      // bottomNavigationBar: NavBar(),
    );
  }
}
