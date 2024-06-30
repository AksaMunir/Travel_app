import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/navpages/confirmation_page.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  int selectedindex = -1;
  int selectedindex1 = -1;
  List<String> TicketTypes = ["First ", "Bussiness", "Economy"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  top: 320,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, right: 20),
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
                        AppLargeText(text: "Details"),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: ' Name',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0), // Rounded corners
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0, // Border width
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'ID Number',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0), // Rounded corners
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0, // Border width
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        AppText(
                          text: "Numer of Tickets",
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
                          height: 15,
                        ),
                        AppText(
                          text: "Ticket Type",
                          color: AppColors.mainTextColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(3, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedindex1 = index;
                                });
                              },
                              child: Container(
                                width: 110,
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButtons(
                                  color: selectedindex1 == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundcolor: selectedindex1 == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  size: 50,
                                  borderColor: selectedindex1 == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  text: TicketTypes[index],
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConfirmationPage()));
                          },
                          child: Center(
                            child: ResponsiveButton(
                              isresponsive: true,
                              text: "Book",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        // body: Center(
        //   child: Wrap(
        //     children: [
        //       Column(children: [
        //         SizedBox(
        //           height: 2,
        //         ),
        //         Wrap(
        //           children: [
        //             Text(
        //               "Hello! Register to get started.",
        //               style:
        //                   TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 30,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               padding: EdgeInsets.all(7),
        //               height: 40,
        //               width: 400,
        //               decoration: BoxDecoration(
        //                   // color: Color.fromARGB(255, 228, 233, 243),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(
        //                       color: const Color.fromARGB(255, 170, 166, 166))),
        //               child: Expanded(
        //                 child: TextField(
        //                   decoration: InputDecoration(
        //                     hintText: 'First Name',
        //                     labelStyle:
        //                         TextStyle(color: Colors.grey, fontSize: 15),
        //                     border: InputBorder
        //                         .none, // Removes the underline border
        //                     enabledBorder: InputBorder
        //                         .none, // Removes the underline border when enabled
        //                     focusedBorder: InputBorder.none,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               height: 40,
        //               width: 400,
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.grey)),
        //               child: Row(
        //                 children: [
        //                   SizedBox(
        //                     height: 5,
        //                     width: 5,
        //                   ),
        //                   Expanded(
        //                     child: TextField(
        //                       decoration: InputDecoration(
        //                         hintText: 'First Name',
        //                         labelStyle:
        //                             TextStyle(color: Colors.grey, fontSize: 15),
        //                         border: InputBorder
        //                             .none, // Removes the underline border
        //                         enabledBorder: InputBorder
        //                             .none, // Removes the underline border when enabled
        //                         focusedBorder: InputBorder.none,
        //                       ),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     width: 200,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               padding: EdgeInsets.all(7),
        //               height: 40,
        //               width: 400,
        //               decoration: BoxDecoration(
        //                   // color: Color.fromARGB(255, 228, 233, 243),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(
        //                       color: const Color.fromARGB(255, 170, 166, 166))),
        //               child: Expanded(
        //                 child: TextField(
        //                   decoration: InputDecoration(
        //                     hintText: 'First Name',
        //                     labelStyle:
        //                         TextStyle(color: Colors.grey, fontSize: 15),
        //                     border: InputBorder
        //                         .none, // Removes the underline border
        //                     enabledBorder: InputBorder
        //                         .none, // Removes the underline border when enabled
        //                     focusedBorder: InputBorder.none,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               padding: EdgeInsets.all(7),
        //               height: 40,
        //               width: 400,
        //               decoration: BoxDecoration(
        //                   // color: Color.fromARGB(255, 228, 233, 243),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(
        //                       color: const Color.fromARGB(255, 170, 166, 166))),
        //               child: Expanded(
        //                 child: TextField(
        //                   decoration: InputDecoration(
        //                     hintText: 'First Name',
        //                     labelStyle:
        //                         TextStyle(color: Colors.grey, fontSize: 15),
        //                     border: InputBorder
        //                         .none, // Removes the underline border
        //                     enabledBorder: InputBorder
        //                         .none, // Removes the underline border when enabled
        //                     focusedBorder: InputBorder.none,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     backgroundColor: Colors.purple,
        //                     fixedSize: Size(400, 40),
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(10))),
        //                 onPressed: () {
        //                   Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) => WelcomePage()));
        //                 },
        //                 child: Text(
        //                   'Login',
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold, fontSize: 20),
        //                 )),
        //           ],
        //         ),
        //       ]),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
