import 'package:flutter/material.dart';
import 'package:my_app/view/auth_page/login_page.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LoginPage(),
    );
  }
}
