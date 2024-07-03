import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/navpages/book_now_page.dart';
import 'package:travel_app/pages/navpages/schedule_page.dart';
import 'package:travel_app/pages/welcome_page.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String place;
  final String image;

  DetailPage(
      {Key? key, required this.name, required this.place, required this.image})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedindex = -1;

  List<String> peopleNo = ["1", "2", "3", "4", "5", "+"];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

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
                height: screenSize.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/" + widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: screenSize.height * 0.05,
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
                  )
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.32,
              child: Container(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.05,
                  top: screenSize.height * 0.03,
                  right: screenSize.width * 0.05,
                ),
                width: screenSize.width,
                height: screenSize.height * 0.75,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: AppLargeText(
                              text: widget.name,
                              color: Colors.black54.withOpacity(0.8),
                              size: screenSize.width * 0.08,
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: AppLargeText(
                            text: "\$250",
                            color: AppColors.mainColor,
                            size: screenSize.width * 0.08,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                          size: screenSize.width * 0.05,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.01,
                        ),
                        Flexible(
                          child: AppText(
                            text: widget.place,
                            color: AppColors.textColor1,
                            size: screenSize.width * 0.045,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
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
                              size: screenSize.width * 0.05,
                            );
                          }),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                          size: screenSize.width * 0.045,
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: screenSize.width * 0.06,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    AppText(
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                      size: screenSize.width * 0.045,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Wrap(
                      children: List.generate(6, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(right: screenSize.width * 0.02),
                            child: AppButtons(
                              color: selectedindex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundcolor: selectedindex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              size: screenSize.width * 0.12,
                              borderColor: selectedindex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: peopleNo[index],
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SchedulePage()),
                        );
                      },
                      child: AppLargeText(
                        text: "See Schedule",
                        color: AppColors.mainColor,
                        size: screenSize.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: screenSize.width * 0.06,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Flexible(
                      child: AppText(
                        text:
                            "You must go on travelling. Travelling helps get rid of pressure. Go to the mountains to see the nature.",
                        color: AppColors.mainTextColor,
                        size: screenSize.width * 0.045,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      children: [
                        AppButtons(
                          color: Colors.grey,
                          backgroundcolor: Colors.white,
                          size: screenSize.width * 0.15,
                          borderColor: AppColors.textColor1,
                          isIcon: true,
                          icon: Icons.favorite,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookNow()),
                            );
                          },
                          child: ResponsiveButton(
                            isresponsive: true,
                            text: "Book Trip Now",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
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
