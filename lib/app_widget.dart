import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/about/about_page.dart';
import 'package:masterclass_app/modules/animations/animations_page.dart';
import 'package:masterclass_app/modules/animations/challenge1/animations_challenge1_page.dart';
import 'package:masterclass_app/modules/animations/challenge2/animations_challenge2_page.dart';
import 'package:masterclass_app/modules/animations/challenge3/animations_challenge3_page.dart';
import 'package:masterclass_app/modules/bloc/bloc_page.dart';
import 'package:masterclass_app/modules/bloc/challenge1/search_cep_page1.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_page2.dart';
import 'package:masterclass_app/modules/construct/construct_page.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/product_page.dart';
import 'package:masterclass_app/modules/design_paterns/design_paterns_page.dart';
import 'package:masterclass_app/modules/home/home_page.dart';
import 'package:masterclass_app/modules/mockups/challenge1/mockups_challenge1_page.dart';
import 'package:masterclass_app/modules/mockups/challenge2/tinder_login_page.dart';
import 'package:masterclass_app/modules/mockups/mockups_page.dart';
import 'package:masterclass_app/modules/splash/splash_page.dart';
import 'package:masterclass_app/my_app_widget.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: 'Masterclass Atividades',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          darkTheme: MyThemes.darkTheme,
          theme: MyThemes.lightTheme,
          routes: {
            "/": (context) => const SplashPage(),
            "/pages": (context) => const MyAppWidget(),
            "/construct": (context) => const ConstructPage(),
            "/home": (context) => const HomePage(),
            "/about": (context) => const AboutPage(),
            "/animations": (context) => const AnimationsPage(),
            "/animations/challenge1": (context) =>
                const AnimationsChallenge1Page(),
            "/animations/challenge2": (context) =>
                const AnimationsChallenge2Page(),
            "/animations/challenge3": (context) =>
                const AnimationsChallenge3Page(),
            "/mockups": (context) => const MockupsPage(),
            "/mockups/challenge1": (context) => const MockupsChallenge1Page(),
            "/mockups/challenge2": (context) => const TinderLoginPage(),
            "/design_paterns": (context) => const DesignPaternsPage(),
            "/design_paterns/challenge1": (context) => const ProductPage(),
            "/bloc": (context) => const BlocPage(),
            "/bloc/challenge1": (context) => const SearchCepPage1(),
            "/bloc/challenge2": (context) => const SearchCepPage2(),
          },
        );
      },
    );
  }
}
