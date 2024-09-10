import 'package:av_tech_fin/screen/chat.dart';
import 'package:av_tech_fin/screen/home.dart';
import 'package:av_tech_fin/screen/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const OnBoarding(),
          "/home": (context) => const Home(),
          "/chat": (context) => const ChatScreen(),
        });
  }
}
