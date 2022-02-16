import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Image.asset(
          AppAssets.loadingAnimation,
          height: 125.0,
          width: 125.0,
        ),
      ),
    );
  }
}
