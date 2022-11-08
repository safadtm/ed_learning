import 'package:flutter/material.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/view/widgets/app_text_field.dart';
import 'package:my_app/view/widgets/big_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            AppTextField(
              textController: nameController,
              hintText: "Name",
              icon: Icons.person,
            ),
            const SizedBox(height: 20),
            AppTextField(
              textController: phoneController,
              hintText: "Phone Number",
              icon: Icons.call,
            ),
            const SizedBox(height: 20),
            AppTextField(
              textController: passwordController,
              hintText: "Password",
              icon: Icons.password_sharp,
              isObscure: true,
            ),
            const SizedBox(height: 70),
            /////tagline
            Row(
              children: [
                Expanded(child: Container()),
                RichText(
                  text: TextSpan(
                    text: "Sign into your account",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            /////////////signupbutton///////////////
            GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orangeAccent,
                ),
                child: Center(
                  child: BigText(
                    text: "Sign in",
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            /////
            const SizedBox(height: 20),
            ///////////tagline//////
            RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: const [
                  TextSpan(
                    text: " Create",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainBlackColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
