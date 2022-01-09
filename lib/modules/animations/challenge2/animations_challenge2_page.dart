import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/animations/challenge2/list_tile_animations_page.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';

class AnimationsChallenge2Page extends StatefulWidget {
  const AnimationsChallenge2Page({Key? key}) : super(key: key);

  @override
  _AnimationsChallenge2PageState createState() =>
      _AnimationsChallenge2PageState();
}

class _AnimationsChallenge2PageState extends State<AnimationsChallenge2Page> {
  bool isExpanded = false;
  final duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarWidget(
        imgLogo: false,
        appBar: AppBar(),
        title: 'Expansion Tile Animado\n',
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.background,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ListTileAnimationsPage(),
                ListTileAnimationsPage(),
                ListTileAnimationsPage(),
                ListTileAnimationsPage(),
                ListTileAnimationsPage(),
              ],
            ),
          )),
    );
  }
}
