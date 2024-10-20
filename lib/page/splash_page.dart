import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garments_niyog/page/login_page.dart';
import 'package:get/get.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _updateAppbar();
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => AnimatedSplashScreen(splash: "assets/images/splaseIcon.png", splashIconSize: 500.0,duration: 2000, nextScreen: SignInScreen(),splashTransition: SplashTransition.slideTransition,));
      
    });
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // statusBarColor: hexToColor('#33a0da').withOpacity(0.1),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
    );
  }
}
