import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/my_app_widget.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Theme.of(context).backgroundColor,
      splash: Image.asset(
        AppImages.masterclassLogo,
      ),
      nextScreen: const MyAppWidget(),
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
