import 'package:flutter/material.dart';
import 'package:my_app/view/layout/layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Share ',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: LayoutPage(),
    );
  }
}
