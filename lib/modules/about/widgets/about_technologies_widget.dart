import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/about/controllers/technologies_controller.dart';
import 'package:masterclass_app/modules/about/services/technologies_service.dart';
import 'package:masterclass_app/shared/themes/app_text_styles.dart';
import 'package:masterclass_app/shared/widgets/technologies_card_widget.dart';

class AboutTechnologiesWidget extends StatefulWidget {
  const AboutTechnologiesWidget({Key? key}) : super(key: key);

  @override
  State<AboutTechnologiesWidget> createState() =>
      _AboutTechnologiesWidgetState();
}

class _AboutTechnologiesWidgetState extends State<AboutTechnologiesWidget> {
  final controller =
      TechnologiesController(technologiesService: TechnologiesService());

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
    controller.loadTechnologiesList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tecnologias Favoritas',
            style: TextStyles.headline2,
          ),
          const SizedBox(
            height: 5,
          ),
          controller.technologiesList.isNotEmpty
              ? SizedBox(
                  height: 100,
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.technologiesList.length,
                        itemBuilder: (context, index) {
                          return TechnologiesCardWidget(
                            title: controller.technologiesList[index].title,
                            image: controller.technologiesList[index].image,
                          );
                        },
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
