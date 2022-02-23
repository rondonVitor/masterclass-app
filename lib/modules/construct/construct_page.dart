import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:masterclass_app/shared/widgets/base_app_bar_widget.dart';

class ConstructPage extends StatelessWidget {
  const ConstructPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BaseAppBarWidget(
        imgLogo: true,
        title: 'Olá Vitor\n',
        appBar: AppBar(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie_construct.json'),
              Text(
                'Página em Construção',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Theme.of(context).highlightColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
