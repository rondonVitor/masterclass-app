import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/themes/theme_provider.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/custom_card_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: true,
        title: 'Olá, Vitor\n',
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Theme.of(context).backgroundColor,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomCardWidget(
                    title: 'Animações',
                    subtitle:
                        'Estudo sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                    urlImage: provider.isDarkMode
                        ? AppImages.iconRunningBlack
                        : AppImages.iconRunningWhite,
                    redirectUrl: '/animations',
                    exercisesNumber: '4',
                  ),
                  CustomCardWidget(
                    title: 'Leitura de Mockup',
                    subtitle:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    urlImage: provider.isDarkMode
                        ? AppImages.iconGlassesBlack
                        : AppImages.iconGlassesWhite,
                    redirectUrl: '/mockups',
                    exercisesNumber: '2',
                  ),
                  CustomCardWidget(
                    title: 'Playground',
                    subtitle: 'Ambiente destinado a testes e estudos em geral',
                    urlImage: provider.isDarkMode
                        ? AppImages.iconToysBlack
                        : AppImages.iconToysWhite,
                    redirectUrl: '/construct',
                    exercisesNumber: '0',
                  ),
                  CustomCardWidget(
                    title: 'Design Paterns',
                    subtitle:
                        'Estudo sobre Design Paterns, Controller, Service, Repository e DataSource. Contendo 1 exercício',
                    urlImage: provider.isDarkMode
                        ? AppImages.designServicesBlack
                        : AppImages.designServicesWhite,
                    redirectUrl: '/design_paterns',
                    exercisesNumber: '1',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
