import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/exercise_widget.dart';

class MockupsPage extends StatelessWidget {
  const MockupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: false,
        title: 'Leitura de Mockup,\n',
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
                urlRedirect: '/mockups/challenge1',
              ),
              ExerciseWidget(
                numberExercise: '2',
                titleExercise: 'Desafio 02',
                urlRedirect: '/mockups/challenge2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
