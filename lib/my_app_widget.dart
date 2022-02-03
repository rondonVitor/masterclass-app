import 'package:flutter/material.dart';
import 'package:masterclass_app/main.dart';
import 'package:masterclass_app/modules/about/about_page.dart';
import 'package:masterclass_app/modules/home/home_page.dart';
import 'package:masterclass_app/shared/utils/selected_index_navigation.dart';
import 'package:masterclass_app/shared/widgets/custom_bottom_navigation_bar_widget.dart';

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  final selectedIndex = getIt.get<SelectedIndexNavigation>();
  final pages = [
    const HomePage(),
    Container(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: selectedIndex,
        builder: (context, widget) {
          return pages[selectedIndex.value];
        },
      ),
      bottomNavigationBar: const CustomBottomNavigationBarWidget(),
    );
  }
}
