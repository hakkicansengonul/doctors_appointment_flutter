import 'package:doctors_appointment_flutter/screens/home_screen.dart';
import 'package:doctors_appointment_flutter/screens/homehome.dart';
import 'package:doctors_appointment_flutter/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}
