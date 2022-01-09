import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';

class AnimationsChallenge3Page extends StatefulWidget {
  const AnimationsChallenge3Page({Key? key}) : super(key: key);

  @override
  _AnimationsChallenge3PagePage createState() =>
      _AnimationsChallenge3PagePage();
}

class _AnimationsChallenge3PagePage extends State<AnimationsChallenge3Page>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  final duration = const Duration(seconds: 1);

  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<BorderRadius?> borderRadiusAnimation;
  late Animation<Alignment?> alignmentAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sizeAnimation = SizeTween(
      begin: const Size(50, 50),
      end: const Size(200, 50),
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(controller);

    borderRadiusAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(25),
      end: BorderRadius.circular(0),
    ).animate(controller);

    alignmentAnimation = AlignmentTween(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarWidget(
        imgLogo: false,
        appBar: AppBar(),
        title: 'Container Animado\n',
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Align(
                  alignment: alignmentAnimation.value!,
                  child: GestureDetector(
                    onTap: () {
                      toggle();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: colorAnimation.value,
                        borderRadius: borderRadiusAnimation.value,
                      ),
                      width: sizeAnimation.value?.width,
                      height: sizeAnimation.value?.height,
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
