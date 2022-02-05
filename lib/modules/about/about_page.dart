import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/about/widgets/about_card_widget.dart';
import 'package:masterclass_app/modules/about/widgets/about_technologies_widget.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';

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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.background,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              child: Column(
                children: const [
                  AboutCardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  AboutTechnologiesWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
