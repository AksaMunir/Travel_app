import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/navpages/book_now_page.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  String name;
  String place;
  String image;

  DetailPage(
      {Key? key, required this.name, required this.place, required this.image})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  int gottenStars = 4;
  int selectedindex = -1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
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
                        image: AssetImage("img/" + widget.image),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: widget.name,
                            color: Colors.black54.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "\$250",
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: widget.place,
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor2,
                            );
                          })),
                          const SizedBox(
                            width: 10,
                          ),
                          AppText(text: "(4.0)", color: AppColors.textColor2)
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Numer of people in your group",
                        color: AppColors.mainTextColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedindex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                color: selectedindex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundcolor: selectedindex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                size: 50,
                                borderColor: selectedindex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text:
                            "You must go on travelling. Travelling helps get rid of pressure. Go to the mountains to see the nature ",
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 80,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                      color: Colors.grey,
                      backgroundcolor: Colors.white,
                      size: 60,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                      icon: Icons.favorite,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BookNow()));
                      },
                      child: ResponsiveButton(
                        isresponsive: true,
                        text: "Book Trip Now",
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
