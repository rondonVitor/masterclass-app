import 'package:flutter/material.dart';
import 'package:masterclass_app/main.dart';

import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:masterclass_app/shared/utils/selected_index_navigation.dart';
import 'package:provider/provider.dart';

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
    final provider = Provider.of<ThemeProvider>(context);

    return Container(
      width: double.infinity,
      height: 80,
      color: Theme.of(context).backgroundColor,
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
                            color: Theme.of(context).cardColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: provider.isDarkMode
                              ? Image.asset(
                                  AppImages.iconTargetWhite,
                                )
                              : Image.asset(
                                  AppImages.iconTargetBlack,
                                ),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: provider.isDarkMode
                              ? Image.asset(
                                  AppImages.iconTargetWhite,
                                )
                              : Image.asset(
                                  AppImages.iconTargetBlack,
                                ),
                        ),
                  Text(
                    'Atividades',
                    style: TextStyle(
                      color: Theme.of(context).highlightColor,
                    ),
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
                            color: Theme.of(context).cardColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: provider.isDarkMode
                              ? Image.asset(
                                  AppImages.iconGithubWhite,
                                )
                              : Image.asset(
                                  AppImages.iconGithubBlack,
                                ),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: provider.isDarkMode
                              ? Image.asset(
                                  AppImages.iconGithubWhite,
                                )
                              : Image.asset(
                                  AppImages.iconGithubBlack,
                                ),
                        ),
                  Text(
                    'Repositórios',
                    style: TextStyle(
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              decoration: BoxDecoration(
                color: AppColors.description,
              ),
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
                            color: Theme.of(context).cardColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Theme.of(context).highlightColor,
                            size: 28,
                          ),
                        )
                      : SizedBox(
                          width: 70,
                          height: 40,
                          child: Icon(
                            Icons.person,
                            color: Theme.of(context).highlightColor,
                            size: 28,
                          ),
                        ),
                  Text(
                    'Sobre o dev',
                    style: TextStyle(
                      color: Theme.of(context).highlightColor,
                    ),
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
