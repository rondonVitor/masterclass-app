import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/custom_bottom_navigation_bar_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: true,
        title: 'Sobre o dev\n',
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: const CustomBottomNavigationBarWidget(),
    );
  }
}
