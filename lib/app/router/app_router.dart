import 'package:flutter/material.dart';
import 'package:star_wars_companion/core/constants/route_constants.dart';
import 'package:star_wars_companion/modules/edit_avatar/avatar_page.dart';
import 'package:star_wars_companion/modules/home/home_page.dart';
import 'package:star_wars_companion/modules/splash/splash_page.dart';
import 'package:star_wars_companion/modules/url_web_view/url_web_view.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  navigateTo(String routeName, dynamic arguments) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      case RouteConstants.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case RouteConstants.websiteRoute:
        return MaterialPageRoute(
          builder: (_) => const UrlWebView(),
        );

      case RouteConstants.avatarRoute:
        return MaterialPageRoute(
          builder: (_) => const AvatarPage(),
        );

      default:
        return null;
    }
  }
}
