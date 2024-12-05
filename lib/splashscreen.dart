import 'package:flutter/material.dart';
import 'package:lifelink_solutions/homepage.dart';
import 'dart:async';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lifelink_solutions/signin.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState(){
    super.initState();

    Timer timer = Timer.periodic(Duration(seconds: 4), (Timer _) {

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SignupPage(),
          ));

    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/splash2.gif'),

      ),
    );
  }
}

