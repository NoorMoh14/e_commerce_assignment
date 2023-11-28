import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/color.dart';
import 'home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true,);

  late final Animation<double> _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
  );
  void initState() {
    // TODO: implement initState
    _splashTimer();
    super.initState();
  }
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Column(
            children: [
              SizedBox(
                height: Get.height/3,
              ),
              Container(
                alignment: Alignment.center,
                child: ScaleTransition(
                  scale: _animation,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 250,

                  ),
                ),
              ),
              SizedBox(
                height: Get.height/5,
              ),
              CircularProgressIndicator(color: AppColors.circularProgressColor,),

            ],
          ),
        ),
    );
  }

  void _splashTimer() {
    Timer(
        Duration(seconds: 3),(){
        Get.offNamed("/HomeScreen");
    });
  }
}
