import 'package:flutter/material.dart';
import 'package:my_app/res/custom_names.dart';
import 'package:my_app/view/widgets/big_text.dart';
import 'package:my_app/view/widgets/icon_and_text.dart';
import 'package:my_app/view/widgets/small_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            /////////////////

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                        child: Image.network(
                            fit: BoxFit.cover,
                            "https://i.pinimg.com/originals/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg"),
                      ),
                      backgroundColor: Colors.orangeAccent,
                      radius: 90,
                    ),
                    const SizedBox(height: 20),
                    BigText(
                      text: CustomNames.myname,
                      color: Colors.black,
                      size: 25,
                    ),
                    const SizedBox(height: 10),
                    // SmallText(
                    //     text: CustomNames.selectedCourse, color: Colors.black),
                  ],
                ),
              ),
            ),
            //////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const IconAndTextWidget(
                        icon: Icons.notifications,
                        text: "Notifications",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.assignment_outlined,
                        text: "Exam Results",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.people_alt_outlined,
                        text: "Referrals",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.play_for_work_sharp,
                        text: "Downloads",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.share,
                        text: "Share the app",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.phone,
                        text: "Contact",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const Divider(),
                    const IconAndTextWidget(
                        icon: Icons.warning_amber_sharp,
                        text: "Terms & Conditions",
                        textColor: Colors.black,
                        iconColor: Colors.orangeAccent),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.orangeAccent)),
                      onPressed: () {},
                      icon: Icon(Icons.logout),
                      label: BigText(text: "Sign out", color: Colors.black),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
