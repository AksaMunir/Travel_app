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
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AppText(
                text: "Welcome To travel with us",
                size: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            AppText(
              text: "Sign up",
              size: 20,
            ),
            SizedBox(
              height: 20,
            ),
            InputText(hint: "First Name"),
            SizedBox(
              height: 10,
            ),
            InputText(hint: "Last Name"),
            SizedBox(
              height: 10,
            ),
            InputText(hint: "Contact No."),
            SizedBox(
              height: 10,
            ),
            InputText(hint: "Email"),
            SizedBox(
              height: 10,
            ),
            InputText(hint: "Account No"),
            SizedBox(
              height: 10,
            ),
            InputText(hint: "Password"),
            Row(
              children: [
                SizedBox(
                  width: 250,
                ),
                AppText(
                  text: "Forgot Password?",
                  size: 13,
                  color: AppColors.mainColor,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: ResponsiveButton(
                      isresponsive: true,
                      text: "Sign up",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
