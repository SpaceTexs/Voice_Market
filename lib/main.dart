import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:voice_market/splash_screen.dart';

import 'login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        // GetPage(
        //   name: '/',
        //   page: () => SplashScreen(),
        // ),
      ],
      //home: SplashScreen(),
    );
  }
}
