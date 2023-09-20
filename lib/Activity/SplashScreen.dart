import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import "package:gardenink/Activity/loginPage.dart";
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSplashScreen(
        centered: true,
        splashIconSize: MediaQuery.of(context).size.height,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 200.w,
              height: 200.h,
            ),
            SizedBox(height: 5.h),
            const SpinKitFadingCircle(
              color: Color.fromRGBO(118, 181, 90, 1),
              duration: Duration(seconds: 5),
            ),
            const Text(
              "Connect Grow Green",
              style: TextStyle(color: Colors.black38, fontFamily: "Raleway"),
            )
          ],
        ),
        nextScreen: LoginPage(),
        duration: 5000,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}
