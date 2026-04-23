import 'package:flutter/material.dart';
import 'package:fruit_hub_app/views/boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFFA451)),
        fontFamily: 'BrandonGrotesque',
        scaffoldBackgroundColor: Colors.white
      ),
      home: BoardingPage(),
    );
  }
}
