import 'package:flutter/material.dart';

import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class SkillWidget extends StatefulWidget {
  final String title;
  final double percent;
  double calcPercent;

  SkillWidget({
    Key? key,
    required this.title,
    required this.percent,
    this.calcPercent = 0.0,
  }) : super(key: key);

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  @override
  void initState() {
    super.initState();

    calculatePercentSkill();
  }

  calculatePercentSkill() {
    const int width = 255;

    widget.calcPercent = ((widget.percent / 100) * width);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyles.textDescription,
          ),
          Stack(
            children: [
              Container(
                width: 255,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      28,
                    ),
                  ),
                ),
              ),
              Container(
                width: widget.calcPercent,
                height: 10,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      28,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
