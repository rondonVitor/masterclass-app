import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';
import 'package:masterclass_app/shared/widgets/skill_widget.dart';

class AboutSkills extends StatelessWidget {
  const AboutSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Habilidades e Competências',
            style: TextStyles.headline2,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: const BorderRadius.all(
                Radius.circular(28),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 17,
              ),
              child: Column(
                children: [
                  SkillWidget(title: 'Dart/Flutter', percent: 50.0),
                  SkillWidget(title: 'PHP', percent: 70.0),
                  SkillWidget(title: 'Angular', percent: 70.0),
                  SkillWidget(title: 'HTML', percent: 70.0),
                  SkillWidget(title: 'CSS', percent: 40.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
