import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: screenSize.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mount_detail.jpg"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 10,
                top: 10,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: AppColors.mainColor,
                      ),
                    )
                  ],
                )),
            Positioned(
                top: screenSize.height * 0.32,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: screenSize.height * 0.95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "Thank you!",
                        color: AppColors.mainColor,
                        size: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "Your tickets has been booked.",
                        size: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "Flight# 12465335",
                        size: 25,
                      ),
                      AppText(
                          text:
                              "For more details, visit our page http//:Travelwithus.com or contact us at 000-00000-000"),
                      SizedBox(
                        height: 40,
                      ),
                      AppText(
                        text:
                            "Have a safe Journey with us and enjoy your tour.",
                        size: 25,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:travel_app/misc/colors.dart';
// import 'package:travel_app/widgets/app_large_text.dart';
// import 'package:travel_app/widgets/app_text.dart';

// class ConfirmationPage extends StatelessWidget {
//   const ConfirmationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: Stack(
//             children: [
//               Positioned.fill(
//                 child: Container(
//                   width: double.infinity,
//                   height: screenSize.height * 0.35,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("img/mount_detail.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 10,
//                 top: 10,
//                 child: IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(
//                     Icons.arrow_back,
//                     size: 25,
//                     color: AppColors.mainColor,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: screenSize.height * 0.32,
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(
//                     screenSize.width * 0.05,
//                     screenSize.height * 0.04,
//                     screenSize.width * 0.05,
//                     0,
//                   ),
//                   width: screenSize.width,
//                   height: screenSize.height * 0.6,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       AppLargeText(
//                         text: "Thank you!",
//                         color: AppColors.mainColor,
//                         size: screenSize.width * 0.1,
//                       ),
//                       SizedBox(height: screenSize.height * 0.02),
//                       AppText(
//                         text: "Your tickets has been booked.",
//                         size: screenSize.width * 0.035,
//                       ),
//                       SizedBox(height: screenSize.height * 0.02),
//                       AppText(
//                         text: "Flight# 12465335",
//                         size: screenSize.width * 0.045,
//                       ),
//                       AppText(
//                         text:
//                             "For more details, visit our page http//:Travelwithus.com or contact us at 000-00000-000",
//                         size: screenSize.width * 0.035,
//                       ),
//                       SizedBox(height: screenSize.height * 0.04),
//                       AppText(
//                         text:
//                             "Have a safe Journey with us and enjoy your tour.",
//                         size: screenSize.width * 0.045,
//                       ),
//                       SizedBox(height: screenSize.height * 0.02),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
