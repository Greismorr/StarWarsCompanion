import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_assets.dart';
import 'package:star_wars_companion/core/constants/route_constants.dart';

class RotatingSplashWidget extends StatefulWidget {
  const RotatingSplashWidget({Key? key}) : super(key: key);

  @override
  _RotatingSplashWidgetState createState() => _RotatingSplashWidgetState();
}

class _RotatingSplashWidgetState extends State<RotatingSplashWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    //A cascade notation inicia a animação e a reinicializa quando completada
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    )..forward();

    _animationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacementNamed(RouteConstants.homeRoute);
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
        child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            AppAssets.splashImage,
            height: 125.0,
            width: 125.0,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
