import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/mockups/challenge2/tinder_login_button_widget.dart';
import 'package:masterclass_app/shared/themes/app_images.dart';

class TinderLoginPage extends StatelessWidget {
  const TinderLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffff764f),
                  Color(0xffFF297E),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 160,
                      child: Image.asset(AppImages.tinderLogo),
                    ),
                    const SizedBox(height: 40),
                    RichText(
                      strutStyle: StrutStyle.fromTextStyle(
                        const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By tapping Create Account or Sign In, you agree to our\n',
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: '. Learn how we process your data in our '),
                          TextSpan(
                            text: 'Privacy\n Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Cookies Policy.',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TinderLoginButtonWidget(
                        icon: 'icon_apple.png', label: 'SIGN IN WITH APPLE'),
                    const SizedBox(height: 10),
                    const TinderLoginButtonWidget(
                        icon: 'icon_facebook.png',
                        label: 'SIGN IN WITH FACEBOOK'),
                    const SizedBox(height: 10),
                    const TinderLoginButtonWidget(
                        icon: 'icon_conversation_balloon.png',
                        label: 'SIGN IN WITH PHONE NUMBER'),
                    const SizedBox(height: 20),
                    const Text(
                      'Trouble Signin In?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
