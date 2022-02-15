import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class BaseAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final bool imgLogo;

  const BaseAppBarWidget({
    Key? key,
    required this.title,
    required this.appBar,
    required this.imgLogo,
  }) : super(key: key);

  @override
  State<BaseAppBarWidget> createState() => _BaseAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(110.0);
}

class _BaseAppBarWidgetState extends State<BaseAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return AppBar(
      shadowColor: Colors.transparent,
      toolbarHeight: 130,
      backgroundColor: Theme.of(context).backgroundColor,
      elevation: 0.0,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.imgLogo
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
                    text: widget.title,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: Theme.of(context).highlightColor,
                        ),
                  ),
                  TextSpan(
                    text: 'Fluterando Masterclass',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Theme.of(context).highlightColor,
                        ),
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
            onPressed: () {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              provider.toggleTheme();
            },
            icon: provider.isDarkMode
                ? Image.asset(
                    AppImages.iconMoonWhite,
                  )
                : Image.asset(
                    AppImages.iconMoonBlack,
                  ),
          ),
        )
      ],
    );
  }

  Size get preferredSize => const Size.fromHeight(110.0);
}
