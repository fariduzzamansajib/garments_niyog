
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garments_niyog/config/scroll_behavior_modified.dart';
import 'package:garments_niyog/page/home.dart';
import 'package:garments_niyog/page/login_page.dart';
import 'package:garments_niyog/page/splash_page.dart';
import 'package:get/get.dart';
import 'base/base_bindings.dart';

import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return GetMaterialApp(
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      // initialBinding: BaseBindings(),
      title: 'Garments Niyog',
      theme: AppTheme.get(isLight: true),
      darkTheme: AppTheme.get(isLight: false),
      builder: (context, widget) {
        ScrollConfiguration(
      
          behavior: const ScrollBehaviorModified(),
          child: widget!,
        );
        final data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(
            textScaler: TextScaler.linear(1.0),
            accessibleNavigation: true,
          ),
          child: widget,
        );
      },
      home: SplashPage(),
      
    );
  }
}
