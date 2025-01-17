import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/navpages/register_page.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';
import 'package:travel_app/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: screenSize.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/login.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.3,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: screenSize.height * 0.65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: AppText(
                            text: "Welcome To Travel With Love",
                            size: screenSize.width * 0.06,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.03),
                        AppText(
                          text: "Sign in",
                          size: screenSize.width * 0.05,
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        InputText(hint: "Email"),
                        SizedBox(height: screenSize.height * 0.01),
                        InputText(hint: "Password"),
                        SizedBox(height: screenSize.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppText(
                              text: "Forgot Password?",
                              size: screenSize.width * 0.035,
                              color: AppColors.mainColor,
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.04),
                        Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                },
                                child: ResponsiveButton(
                                  isresponsive: true,
                                  text: "Sign in",
                                ),
                              ),
                              SizedBox(height: screenSize.height * 0.03),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(text: "Don't have an account?"),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RegisterPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Create Account',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenSize.width * 0.04,
                                        color: AppColors.mainColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.03),
                              AppText(
                                  text: "__________ Sign in with __________"),
                              SizedBox(height: screenSize.height * 0.02),
                              Image.asset(
                                "img/google.png",
                                height: screenSize.height * 0.05,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
