import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:provider/provider.dart';

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
    final provider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
      child: Container(
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
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
                      color: Theme.of(context).primaryColor,
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
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Theme.of(context).highlightColor,
                          ),
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
                            color: Theme.of(context).highlightColor,
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
                    style: TextStyle(
                      color: AppColors.description,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  provider.isDarkMode
                      ? Image.asset(
                          AppImages.iconGithubWhite,
                        )
                      : Image.asset(
                          AppImages.iconGithubBlack,
                        ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Acessar código fonte',
                      style: TextStyle(
                        color: Theme.of(context).highlightColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(redirectUrl);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(119, 35),
                      primary: Theme.of(context).primaryColor,
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
