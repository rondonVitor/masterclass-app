import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass Atividades',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.green,
      ),
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}
