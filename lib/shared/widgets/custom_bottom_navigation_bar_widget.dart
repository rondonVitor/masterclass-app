import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AppImages.iconTarget),
                  Text(
                    'Atividades',
                    style: TextStyle(color: AppColors.highlight),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              decoration: BoxDecoration(color: AppColors.description),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AppImages.iconGithub),
                  Text(
                    'Repositórios',
                    style: TextStyle(color: AppColors.highlight),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              decoration: BoxDecoration(color: AppColors.description),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person,
                    color: AppColors.highlight,
                    size: 28,
                  ),
                  Text(
                    'Sobre o dev',
                    style: TextStyle(color: AppColors.highlight),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
