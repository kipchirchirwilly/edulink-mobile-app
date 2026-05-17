import 'package:flutter/material.dart';

import 'screens/signup_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'EduLink',

      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF6F4F7),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5B8DEF),
        ),
      ),

      // START SCREEN
      home: const SignUpScreen(),

      // ROUTES
      routes: {
        '/signup': (context) => const SignUpScreen(),

        '/login': (context) => const LoginScreen(),

        '/home': (context) => const HomeScreen(),

        '/messages': (context) => const MessagesScreen(),

        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}