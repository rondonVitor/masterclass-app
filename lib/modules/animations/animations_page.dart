import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/exercise_widget.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: false,
        title: 'Animações,\n',
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.background,
          child: Column(
            children: const [
              ExerciseWidget(
                numberExercise: '1',
                titleExercise: 'Challenge 01',
                urlRedirect: '/animations/challenge1',
              ),
              ExerciseWidget(
                numberExercise: '2',
                titleExercise: 'Challenge 02',
                urlRedirect: '/animations/challenge2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
