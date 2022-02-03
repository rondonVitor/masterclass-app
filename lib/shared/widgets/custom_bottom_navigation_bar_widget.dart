import 'package:flutter/material.dart';
import 'package:masterclass_app/main.dart';

import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/utils/selected_index_navigation.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  final selectedIndex = getIt.get<SelectedIndexNavigation>();

  @override
  void initState() {
    super.initState();
    selectedIndex.addListener(() {
      setState(() {});
    });
  }

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
              onTap: () {
                selectedIndex.value = 0;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  selectedIndex.value == 0
                      ? Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(AppImages.iconTarget),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: Image.asset(AppImages.iconTarget),
                        ),
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
              onTap: () {
                selectedIndex.value = 1;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  selectedIndex.value == 1
                      ? Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(AppImages.iconGithub),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: Image.asset(AppImages.iconGithub),
                        ),
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
              onTap: () {
                selectedIndex.value = 2;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  selectedIndex.value == 2
                      ? Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Icon(
                            Icons.person,
                            color: AppColors.highlight,
                            size: 28,
                          ),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: Icon(
                            Icons.person,
                            color: AppColors.highlight,
                            size: 28,
                          ),
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
