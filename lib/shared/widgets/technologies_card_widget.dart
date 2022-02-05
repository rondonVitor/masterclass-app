import 'package:flutter/material.dart';

import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class TechnologiesCardWidget extends StatelessWidget {
  final String title;
  final String image;

  const TechnologiesCardWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 94,
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              28,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image),
              Text(
                title,
                style: TextStyles.textHighlight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
