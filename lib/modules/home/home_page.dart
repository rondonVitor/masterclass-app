import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';
import 'package:masterclass_app/shared/widgets/custom_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            color: AppColors.background,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  CustomCardWidget(
                    title: 'Animações',
                    subtitle:
                        'Estudo sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                    urlImage: AppImages.iconRunning,
                    redirectUrl: '/animations',
                    exercisesNumber: '4',
                  ),
                  CustomCardWidget(
                    title: 'Leitura de Mockup',
                    subtitle:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    urlImage: AppImages.iconGlasses,
                    redirectUrl: '/mockups',
                    exercisesNumber: '2',
                  ),
                  CustomCardWidget(
                    title: 'Playground',
                    subtitle: 'Ambiente destinado a testes e estudos em geral',
                    urlImage: AppImages.iconToys,
                    redirectUrl: '/',
                    exercisesNumber: '3',
                  ),
                  CustomCardWidget(
                    title: 'Design Paterns',
                    subtitle:
                        'Estudo sobre Design Paterns, Controller, Service, Repository e DataSource. Contendo 1 exercício',
                    urlImage: AppImages.designServices,
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
