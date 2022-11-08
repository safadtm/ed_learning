import 'package:flutter/material.dart';
import 'package:my_app/utils/bottom_nav/bottom_navigation_bar.dart';
import 'package:my_app/view/bookmark/bookmark_page.dart';
import 'package:my_app/view/exams/exams_page.dart';
import 'package:my_app/view/home/home_page.dart';
import 'package:my_app/view/profile/profile_page.dart';
import 'package:my_app/view/schedules/schedules_page.dart';

class LayoutPage extends StatelessWidget {
  LayoutPage({super.key});

  final _pages = [
    const HomePage(),
    const ExamsPage(),
    const SchedulesPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
