import 'package:flutter/material.dart';
import 'widgets/avatar_button/avatar_button.dart';
import 'widgets/website_button/website_button.dart';

class AppBarTitle extends StatelessWidget {
  final VoidCallback onWebsiteButtonPressed;
  final Color websiteButtonBackgroundColor;
  final VoidCallback onAvatarButtonPressed;
  final Color avatarButtonBackgroundColor;

  const AppBarTitle({
    Key? key,
    required this.onWebsiteButtonPressed,
    required this.websiteButtonBackgroundColor,
    required this.onAvatarButtonPressed,
    required this.avatarButtonBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WebsiteButton(
          onPressed: onWebsiteButtonPressed,
          backgroundColor: websiteButtonBackgroundColor,
        ),
        AvatarButton(
          backgroundColor: avatarButtonBackgroundColor,
          onPressed: onAvatarButtonPressed,
        )
      ],
    );
  }
}
