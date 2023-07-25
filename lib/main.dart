import 'package:flutter/material.dart';
import 'package:valley/screens/auth/landing_screen.dart';
import 'package:valley/screens/availability_screen.dart';
import 'package:valley/screens/faculty_screen.dart';
import 'package:valley/screens/home_screen.dart';
import 'package:valley/screens/schedule_screen.dart';
import 'package:valley/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valley - Faculty',
      home: const LandingScreen(),
      routes: {
        Routes().landingscreen: (context) => const LandingScreen(),
        Routes().homescreen: (context) => const HomeScreen(),
        Routes().facultyscreen: (context) => const FacultyScreen(),
        Routes().schedulescreen: (context) => const ScheduleScreen(),
        Routes().availabilityscreen: (context) => const AvailabilityScreen(),
      },
    );
  }
}
