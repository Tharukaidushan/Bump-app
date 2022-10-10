import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bump',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 83, 0, 218),
        fontFamily: 'Montserrat',
      ),
      home: AnimatedSplashScreen(splash: const Text('WELCOME', style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.white,)),
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: const Color.fromARGB(255, 83, 0, 218),
          nextScreen: const LoginScreen()),
    );
  }
}