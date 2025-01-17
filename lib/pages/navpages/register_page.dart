import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';
import 'package:travel_app/widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: screenSize.height * 0.15,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: AppText(
                  text: "Welcome To Travel With Love",
                  size: screenSize.width * 0.06,
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
              AppText(
                text: "Sign up",
                size: screenSize.width * 0.05,
              ),
              SizedBox(height: screenSize.height * 0.02),
              InputText(hint: "First Name"),
              SizedBox(height: screenSize.height * 0.01),
              InputText(hint: "Last Name"),
              SizedBox(height: screenSize.height * 0.01),
              InputText(hint: "Contact No."),
              SizedBox(height: screenSize.height * 0.01),
              InputText(hint: "Email"),
              SizedBox(height: screenSize.height * 0.01),
              InputText(hint: "Account No"),
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
                        text: "Sign up",
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
