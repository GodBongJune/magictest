import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:church/ui/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login_page/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: SvgPicture.asset("assets/images/logo/splashLogo.svg"),
        splashIconSize: 400,
        nextScreen: StartPage(),
        duration: 2000,
      ),
    );
  }
}
