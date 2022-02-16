import 'package:flutter/rendering.dart';
import 'package:star_wars_companion/app/theme/app_assets.dart';

class AppBackgroundDecoration {
  static const listBackgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppAssets.backgroundImage),
      fit: BoxFit.cover,
    ),
  );

  static const avatarBackgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppAssets.avatarBackgroundImage),
      fit: BoxFit.cover,
    ),
  );
}
