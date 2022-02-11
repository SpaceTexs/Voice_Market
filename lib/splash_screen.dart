import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    Future.delayed(
      Duration(seconds: 11),
    ).then((value) {
      Get.toNamed('login');
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffffffff), Color(0x3df9fbff)]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 1,
                height: size.height * 0.5,
                child: Image.asset('assets/images/logo1.png'),
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'VOICE',
                      textStyle: TextStyle(
                        color: Color(0xFF4103B6),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WavyAnimatedText(
                      'MARKET',
                      textStyle: TextStyle(
                        color: Color(0xFF4103B6),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
