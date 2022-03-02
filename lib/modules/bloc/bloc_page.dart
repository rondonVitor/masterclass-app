import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/exercise_widget.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: false,
        title: 'Design Paterns,\n',
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: const [
              ExerciseWidget(
                numberExercise: '1',
                titleExercise: 'Desafio 01',
                urlRedirect: '/bloc/challenge1',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
