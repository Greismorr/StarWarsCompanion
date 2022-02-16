import 'package:flutter/material.dart';
import 'package:star_wars_companion/modules/splash/widgets/rotating_splash_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: RotatingSplashWidget(),
    );
  }
}
