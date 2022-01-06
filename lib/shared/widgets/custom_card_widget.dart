import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String urlImage;
  final String redirectUrl;
  final String exercisesNumber;

  const CustomCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.urlImage,
    required this.redirectUrl,
    required this.exercisesNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
      child: Container(
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Image.asset(urlImage),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyles.headline2,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Exercícios:  ',
                          style: TextStyle(
                            color: AppColors.description,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: exercisesNumber,
                          style: TextStyle(
                            color: AppColors.highlight,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    subtitle,
                    style:
                        TextStyle(color: AppColors.description, fontSize: 14),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(AppImages.iconGithub),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Acessar código fonte',
                      style: TextStyle(
                        color: AppColors.highlight,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(119, 35),
                      primary: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: const Text('Ver mais'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
