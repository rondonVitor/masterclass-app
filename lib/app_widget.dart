import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/about/about_page.dart';
import 'package:masterclass_app/modules/animations/animations_page.dart';
import 'package:masterclass_app/modules/animations/challenge1/animations_challenge1_page.dart';
import 'package:masterclass_app/modules/animations/challenge2/animations_challenge2_page.dart';
import 'package:masterclass_app/modules/animations/challenge3/animations_challenge3_page.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/product_page.dart';
import 'package:masterclass_app/modules/design_paterns/design_paterns_page.dart';
import 'package:masterclass_app/modules/home/home_page.dart';
import 'package:masterclass_app/modules/mockups/challenge1/mockups_challenge1_page.dart';
import 'package:masterclass_app/modules/mockups/challenge2/tinder_login_page.dart';
import 'package:masterclass_app/modules/mockups/mockups_page.dart';
import 'package:masterclass_app/my_app_widget.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

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
        "/": (context) => const MyAppWidget(),
        "/home": (context) => const HomePage(),
        "/about": (context) => const AboutPage(),
        "/animations": (context) => const AnimationsPage(),
        "/animations/challenge1": (context) => const AnimationsChallenge1Page(),
        "/animations/challenge2": (context) => const AnimationsChallenge2Page(),
        "/animations/challenge3": (context) => const AnimationsChallenge3Page(),
        "/mockups": (context) => const MockupsPage(),
        "/mockups/challenge1": (context) => const MockupsChallenge1Page(),
        "/mockups/challenge2": (context) => const TinderLoginPage(),
        "/design_paterns": (context) => const DesignPaternsPage(),
        "/design_paterns/challenge1": (context) => const ProductPage()
      },
    );
  }
}
