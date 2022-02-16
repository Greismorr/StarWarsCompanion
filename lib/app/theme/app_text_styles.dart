import 'package:flutter/rendering.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const starWarsFont = "Stjldbl1";

  static const textRegular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textColor,
  );

  static const appBarTextRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const appBarHyperlinkText = TextStyle(
    fontSize: 18,
    fontFamily: starWarsFont,
    color: AppColors.hyperlinkColor,
  );

  static const textHighlightRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundColor,
  );

  static const textSubtitleRegular = TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
  );
}
