import 'package:flutter/material.dart';
import 'main_page.dart';
import 'main_page/app_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WEB MAIN LAYOUT',
      home: Material(
        child: AppLayout(),
      ),
    );
  }
}
