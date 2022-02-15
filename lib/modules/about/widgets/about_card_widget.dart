import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AboutCardWidget extends StatelessWidget {
  const AboutCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 400,
      height: 260,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 8,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(50),
                    child: Image.asset(
                      AppImages.euImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Vitor dos Santos Rondon',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Theme.of(context).highlightColor,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Olá me chamo Vitor, atualmente com 21 anos e em busca de uma oportunidade como desenvolvedor Flutter.',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColors.description,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 165,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: provider.isDarkMode
                      ? [
                          Image.asset(
                            AppImages.iconWhatsappWhite,
                          ),
                          Image.asset(
                            AppImages.iconGithubWhite,
                          ),
                          Image.asset(
                            AppImages.iconInstagramWhite,
                          ),
                          Image.asset(
                            AppImages.iconFacebookWhite,
                          ),
                        ]
                      : [
                          Image.asset(
                            AppImages.iconWhatsappBlack,
                          ),
                          Image.asset(
                            AppImages.iconGithubBlack,
                          ),
                          Image.asset(
                            AppImages.iconInstagramBlack,
                          ),
                          Image.asset(
                            AppImages.iconFacebookBlack,
                          ),
                        ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
