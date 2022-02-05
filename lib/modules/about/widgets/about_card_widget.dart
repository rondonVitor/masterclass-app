import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class AboutCardWidget extends StatelessWidget {
  const AboutCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.card,
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
                style: TextStyles.headline2,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Olá me chamo Vitor, atualmente com 21 anos e em busca de uma oportunidade como desenvolvedor Flutter.',
                style: TextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 165,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.iconWhatsapp),
                    Image.asset(AppImages.iconGithub),
                    Image.asset(AppImages.iconInstagram),
                    Image.asset(AppImages.iconFacebook),
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
