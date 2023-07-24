import 'package:flutter/material.dart';
import 'package:valley/screens/auth/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Valley',
      home: LandingScreen(),
    );
  }
}
