import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/about/controllers/skills_controller.dart';
import 'package:masterclass_app/modules/about/models/skills_model.dart';

import 'package:masterclass_app/shared/themes/app_colors.dart';

class SkillWidget extends StatefulWidget {
  final String title;
  final double percent;
  final double calcPercent;

  const SkillWidget({
    Key? key,
    required this.title,
    required this.percent,
    this.calcPercent = 0.0,
  }) : super(key: key);

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  late SkillsController controller;
  late SkillsModel model;

  @override
  void initState() {
    super.initState();

    model = SkillsModel(
        percent: widget.percent,
        title: widget.title,
        calcPercent: widget.calcPercent);

    controller = SkillsController(
      skillsModel: model,
    );

    controller.calculatePercentSkill();
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
            model.title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.description,
                ),
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
                width: model.calcPercent,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
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
