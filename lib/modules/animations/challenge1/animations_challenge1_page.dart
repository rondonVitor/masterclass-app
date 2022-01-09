import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';

class AnimationsChallenge1Page extends StatefulWidget {
  const AnimationsChallenge1Page({Key? key}) : super(key: key);

  @override
  _AnimationsChallenge1PageState createState() =>
      _AnimationsChallenge1PageState();
}

class _AnimationsChallenge1PageState extends State<AnimationsChallenge1Page> {
  bool isExpanded = false;
  final duration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarWidget(
        imgLogo: false,
        appBar: AppBar(),
        title: 'Container Animado\n',
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AnimatedAlign(
            duration: duration,
            alignment: isExpanded ? Alignment.topCenter : Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: isExpanded ? Colors.red : Colors.blue,
                  borderRadius: isExpanded
                      ? BorderRadius.circular(0)
                      : BorderRadius.circular(25),
                ),
                duration: duration,
                alignment: Alignment.bottomRight,
                width: isExpanded ? 200 : 50,
                height: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
