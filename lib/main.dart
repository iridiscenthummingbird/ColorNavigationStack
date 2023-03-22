import 'package:flutter/material.dart';
import 'package:navigation_color_stack/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Navigation Stack',
      home: HomePage(),
    );
  }
}
