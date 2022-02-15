import 'package:flutter/material.dart';

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
            color: Theme.of(context).cardColor,
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
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      numberExercise,
                      style: TextStyle(
                        color: Theme.of(context).highlightColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Text(
                  titleExercise,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).highlightColor,
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
