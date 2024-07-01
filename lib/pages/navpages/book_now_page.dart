// import 'package:flutter/material.dart';
// import 'package:travel_app/misc/colors.dart';
// import 'package:travel_app/pages/navpages/confirmation_page.dart';
// import 'package:travel_app/widgets/app_buttons.dart';
// import 'package:travel_app/widgets/app_large_text.dart';
// import 'package:travel_app/widgets/app_text.dart';
// import 'package:travel_app/widgets/responsive_button.dart';

// class BookNow extends StatefulWidget {
//   const BookNow({super.key});

//   @override
//   State<BookNow> createState() => _BookNowState();
// }

// class _BookNowState extends State<BookNow> {
//   int selectedindex = -1;
//   int selectedindex1 = -1;
//   List<String> TicketTypes = ["First ", "Bussiness", "Economy"];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           width: double.maxFinite,
//           height: double.maxFinite,
//           child: Stack(
//             children: [
//               Positioned(
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     width: double.maxFinite,
//                     height: 350,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("img/mount_detail.jpg"),
//                           fit: BoxFit.cover),
//                     ),
//                   )),
//               Positioned(
//                   left: 10,
//                   top: 10,
//                   child: Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         icon: Icon(
//                           Icons.arrow_back,
//                           size: 25,
//                           color: AppColors.mainColor,
//                         ),
//                       )
//                     ],
//                   )),
//               Positioned(
//                   top: 320,
//                   child: Container(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 30, right: 20),
//                     width: MediaQuery.of(context).size.width,
//                     height: 600,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(30),
//                             topRight: Radius.circular(30))),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         AppLargeText(text: "Details"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextField(
//                           decoration: InputDecoration(
//                             hintText: ' Name',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 15),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                   12.0), // Rounded corners
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0, // Border width
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         TextField(
//                           decoration: InputDecoration(
//                             hintText: 'ID Number',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 15),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                   12.0), // Rounded corners
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0, // Border width
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         AppText(
//                           text: "Numer of Tickets",
//                           color: AppColors.mainTextColor,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Wrap(
//                           children: List.generate(5, (index) {
//                             return InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   selectedindex = index;
//                                 });
//                               },
//                               child: Container(
//                                 margin: const EdgeInsets.only(right: 10),
//                                 child: AppButtons(
//                                   color: selectedindex == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   backgroundcolor: selectedindex == index
//                                       ? Colors.black
//                                       : AppColors.buttonBackground,
//                                   size: 50,
//                                   borderColor: selectedindex == index
//                                       ? Colors.black
//                                       : AppColors.buttonBackground,
//                                   text: (index + 1).toString(),
//                                 ),
//                               ),
//                             );
//                           }),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         AppText(
//                           text: "Ticket Type",
//                           color: AppColors.mainTextColor,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Wrap(
//                           children: List.generate(3, (index) {
//                             return InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   selectedindex1 = index;
//                                 });
//                               },
//                               child: Container(
//                                 width: 110,
//                                 margin: const EdgeInsets.only(right: 10),
//                                 child: AppButtons(
//                                   color: selectedindex1 == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   backgroundcolor: selectedindex1 == index
//                                       ? Colors.black
//                                       : AppColors.buttonBackground,
//                                   size: 50,
//                                   borderColor: selectedindex1 == index
//                                       ? Colors.black
//                                       : AppColors.buttonBackground,
//                                   text: TicketTypes[index],
//                                 ),
//                               ),
//                             );
//                           }),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ConfirmationPage()));
//                           },
//                           child: Center(
//                             child: ResponsiveButton(
//                               isresponsive: true,
//                               text: "Book",
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/navpages/confirmation_page.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  int selectedindex = -1;
  int selectedindex1 = -1;
  List<String> ticketTypes = ["First ", "Business", "Economy"];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                width: double.infinity,
                height: screenSize.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mount_detail.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: AppColors.mainColor,
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.35,
              child: Container(
                padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                    screenSize.height * 0.01, screenSize.width * 0.05, 0),
                width: screenSize.width,
                height: screenSize.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: "Details"),
                    SizedBox(height: screenSize.height * 0.02),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.015),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'ID Number',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.015),
                    AppText(
                      text: "Number of Tickets",
                      color: AppColors.mainTextColor,
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                right: screenSize.width * 0.015),
                            child: AppButtons(
                              color: selectedindex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundcolor: selectedindex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              size: screenSize.height * 0.07,
                              borderColor: selectedindex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: screenSize.height * 0.015),
                    AppText(
                      text: "Ticket Type",
                      color: AppColors.mainTextColor,
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Wrap(
                      children: List.generate(3, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedindex1 = index;
                            });
                          },
                          child: Container(
                            width: screenSize.width * 0.2,
                            margin: EdgeInsets.only(
                                right: screenSize.width * 0.025),
                            child: AppButtons(
                              color: selectedindex1 == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundcolor: selectedindex1 == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              size: screenSize.height * 0.07,
                              borderColor: selectedindex1 == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: ticketTypes[index],
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: screenSize.height * 0.04),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmationPage()),
                        );
                      },
                      child: Center(
                        child: ResponsiveButton(
                          isresponsive: true,
                          text: "Book",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
