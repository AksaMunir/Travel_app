// import 'package:flutter/material.dart';
// import 'package:travel_app/misc/colors.dart';
// import 'package:travel_app/widgets/app_text.dart';

// class ResponsiveButton extends StatelessWidget {
//   bool? isresponsive;
//   double? width;
//   String? text;
//   ResponsiveButton({
//     Key? key,
//     this.isresponsive = false,
//     this.width = 110,
//     this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: isresponsive == true ? 280 : width,
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: AppColors.mainColor,
//       ),
//       child: Row(
//         mainAxisAlignment: isresponsive == true
//             ? MainAxisAlignment.spaceBetween
//             : MainAxisAlignment.center,
//         children: [
//           // Image.asset(
//           //   "img/button_img.jpg",
//           //   height: 30,
//           //   width: 40,
//           // )
//           isresponsive == true
//               ? Container(
//                   margin: const EdgeInsets.only(left: 20),
//                   child: AppText(
//                     text: text!,
//                     color: Colors.white,
//                   ),
//                 )
//               : Container(),
//           Container(
//             margin: EdgeInsets.only(right: 20),
//             child: Icon(
//               Icons.arrow_forward,
//               color: Colors.white,
//               size: 30,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isresponsive;
  final double? width;
  final String? text;

  ResponsiveButton({
    Key? key,
    this.isresponsive = false,
    this.width = 110,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: isresponsive == true ? screenSize.width * 0.65 : width,
      height: screenSize.height * 0.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: isresponsive == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          isresponsive == true
              ? Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(
                    text: text!,
                    color: Colors.white,
                  ),
                )
              : Container(),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: screenSize.height * 0.035,
            ),
          ),
        ],
      ),
    );
  }
}
