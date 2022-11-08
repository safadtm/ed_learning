import 'package:flutter/material.dart';
import 'package:my_app/view/auth_page/signup_page.dart';

class ExamsPage extends StatelessWidget {
  const ExamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SignUpPage(),
    );
  }
}
