import 'package:e_commerce_assignment/screens/home/home_screen.dart';
import 'package:e_commerce_assignment/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/login/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home:  const SplashScreen(),
      getPages: [
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/HomeScreen', page: () => HomeScreen()),
        GetPage(name: '/LoginScreen', page: () => LoginScreen()),
      ],
    );
  }
}

