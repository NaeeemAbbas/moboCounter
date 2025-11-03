import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/about_me_screen.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Applying custom colors and fonts (UI Guideline)
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // Replace with a custom font if you like
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/about': (context) => const AboutMeScreen(),
      },
    );
  }
}