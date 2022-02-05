import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';

class BaseAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = AppColors.background;
  final String title;
  final AppBar appBar;
  final bool imgLogo;

  BaseAppBarWidget({
    Key? key,
    required this.title,
    required this.appBar,
    required this.imgLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      toolbarHeight: 130,
      backgroundColor: AppColors.background,
      elevation: 0.0,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imgLogo
              ? SizedBox(
                  child: Image.asset(AppImages.logo),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: TextStyles.headline1,
                  ),
                  TextSpan(
                    text: 'Fluterando Masterclass',
                    style: TextStyles.description,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppImages.iconMoon,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(110.0);
}
