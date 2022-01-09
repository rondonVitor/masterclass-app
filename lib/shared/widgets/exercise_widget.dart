import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class ExerciseWidget extends StatelessWidget {
  final String numberExercise;
  final String titleExercise;
  final String urlRedirect;

  const ExerciseWidget({
    Key? key,
    required this.numberExercise,
    required this.titleExercise,
    required this.urlRedirect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(urlRedirect);
        },
        child: Container(
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: const BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 33,
                  height: 33,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      numberExercise,
                      style: TextStyle(
                        color: AppColors.highlight,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Text(titleExercise, style: TextStyles.headline2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
