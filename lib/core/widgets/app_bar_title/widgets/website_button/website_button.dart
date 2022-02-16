import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_colors.dart';
import 'package:star_wars_companion/app/theme/app_text_styles.dart';

class WebsiteButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;

  //Os textos estão em lowercase porque a fonte trabalha melhor assim.
  final String externalWebSiteTitle = "star wars";
  final String externalWebSiteSubtitle = "official website ";

  const WebsiteButton({
    Key? key,
    required this.onPressed,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Center(
        child: Column(
          children: [
            Text(
              externalWebSiteTitle,
              style: AppTextStyles.appBarHyperlinkText,
              softWrap: false,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: externalWebSiteSubtitle,
                    style: AppTextStyles.appBarHyperlinkText,
                  ),
                  const WidgetSpan(
                    child: Icon(
                      Icons.call_made_rounded,
                      size: 18,
                      color: AppColors.hyperlinkColor,
                    ),
                    style: AppTextStyles.appBarHyperlinkText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
