import 'package:masterclass_app/modules/about/models/skills_model.dart';

class SkillsController {
  final SkillsModel skillsModel;

  SkillsController({
    required this.skillsModel,
  });

  calculatePercentSkill() {
    int widthWidget = 255;

    skillsModel.calcPercent = ((skillsModel.percent / 100) * widthWidget);
  }
}
