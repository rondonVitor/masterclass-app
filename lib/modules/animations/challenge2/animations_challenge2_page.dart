import 'package:flutter/material.dart';
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
        title: 'Animations Challenge 02\n',
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Column(
              children: [
                AnimatedContainer(
                  duration: duration,
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'My Expansion tile',
                          style: TextStyle(
                            color:
                                isExpanded ? AppColors.highlight : Colors.blue,
                          ),
                        ),
                      ),
                      AnimatedRotation(
                        turns: isExpanded ? 0.5 : 0,
                        duration: duration,
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: isExpanded ? AppColors.highlight : Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRect(
                  child: AnimatedAlign(
                    duration: duration,
                    alignment: Alignment.center,
                    heightFactor: isExpanded ? 0 : 1,
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      style: TextStyle(color: AppColors.highlight),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
