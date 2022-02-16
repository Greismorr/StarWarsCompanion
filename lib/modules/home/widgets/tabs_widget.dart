import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_text_styles.dart';
import 'package:star_wars_companion/core/constants/app_bar_constants.dart';

class TabsWidget extends StatelessWidget implements PreferredSizeWidget {
  final String moviesTabTitle = "Filmes";
  final String charactersTabTitle = "Personagens";
  final String favoritesTabTitle = "Favoritos";

  const TabsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          child: Text(
            moviesTabTitle,
            style: AppTextStyles.appBarTextRegular,
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: Text(
            charactersTabTitle,
            style: AppTextStyles.appBarTextRegular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
        AppBarConstants.appBarHeight,
      );
}
