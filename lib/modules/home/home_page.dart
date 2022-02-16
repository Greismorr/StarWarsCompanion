import 'package:flutter/material.dart';
import 'package:star_wars_companion/core/constants/app_bar_constants.dart';
import 'package:star_wars_companion/core/constants/route_constants.dart';
import 'package:star_wars_companion/app/theme/app_colors.dart';
import 'package:star_wars_companion/core/widgets/app_bar_title/app_bar_title.dart';
import 'modules/characters/characters_list.dart';
import 'modules/movies/movies_list.dart';
import 'widgets/tabs_widget.dart';

class HomePage extends StatelessWidget {
  final int homePageTabsQuantity = 2;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: homePageTabsQuantity,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: AppBarConstants.appBarHeight,
          title: AppBarTitle(
            websiteButtonBackgroundColor: AppColors.accentColor,
            avatarButtonBackgroundColor: AppColors.accentColor.withOpacity(0.5),
            onWebsiteButtonPressed: () {
              Navigator.of(context).pushNamed(RouteConstants.websiteRoute);
            },
            onAvatarButtonPressed: () {
              Navigator.of(context).pushNamed(RouteConstants.avatarRoute);
            },
          ),
          bottom: const TabsWidget(),
        ),
        body: const TabBarView(
          children: [
            MoviesList(),
            CharactersList(),
          ],
        ),
      ),
    );
  }
}
