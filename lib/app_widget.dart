import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/animations/animations_page.dart';
import 'package:masterclass_app/modules/animations/challenge1/animations_challenge1_page.dart';
import 'package:masterclass_app/modules/animations/challenge2/animations_challenge2_page.dart';
import 'package:masterclass_app/modules/animations/challenge3/animations_challenge3_page.dart';
import 'package:masterclass_app/modules/home/home_page.dart';
import 'package:masterclass_app/modules/mockups/challenge2/tinder_login_page.dart';
import 'package:masterclass_app/modules/mockups/mockups_page.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass Atividades',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.background,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/animations": (context) => const AnimationsPage(),
        "/animations/challenge1": (context) => const AnimationsChallenge1Page(),
        "/animations/challenge2": (context) => const AnimationsChallenge2Page(),
        "/animations/challenge3": (context) => const AnimationsChallenge3Page(),
        "/mockups": (context) => const MockupsPage(),
        "/mockups/challenge2": (context) => const TinderLoginPage(),
      },
    );
  }
}
