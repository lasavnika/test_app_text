import 'package:flutter/material.dart';
import 'package:test_app_text/screens/first_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test Application',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


