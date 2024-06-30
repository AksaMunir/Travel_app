import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  height: 350,
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
                top: 330,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 600,
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
