class SkillsModel {
  final String title;
  final double percent;
  double calcPercent;

  SkillsModel({
    required this.title,
    required this.percent,
    this.calcPercent = 0.0,
  });
}
