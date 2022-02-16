import 'dart:io';
import 'package:flutter/material.dart';
import 'package:star_wars_companion/core/constants/app_bar_constants.dart';
import 'package:star_wars_companion/core/constants/route_constants.dart';
import 'package:star_wars_companion/app/theme/app_colors.dart';
import 'package:star_wars_companion/core/widgets/app_bar_title/app_bar_title.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UrlWebView extends StatefulWidget {
  const UrlWebView({Key? key}) : super(key: key);

  @override
  _UrlWebViewState createState() => _UrlWebViewState();
}

class _UrlWebViewState extends State<UrlWebView> {
  final String externalUrl = 'https://www.starwars.com/community';

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppBarConstants.appBarHeight,
        automaticallyImplyLeading: false,
        title: AppBarTitle(
          websiteButtonBackgroundColor: AppColors.accentColor.withOpacity(0.5),
          avatarButtonBackgroundColor: AppColors.accentColor.withOpacity(0.5),
          onWebsiteButtonPressed: () {
            Navigator.of(context).popUntil(
              (route) => route.settings.name == RouteConstants.homeRoute,
            );
          },
          onAvatarButtonPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(RouteConstants.avatarRoute);
          },
        ),
      ),
      body: Column(
        children: [
          if (_isLoading) const LinearProgressIndicator(),
          Expanded(
            child: WebView(
              initialUrl: externalUrl,
              onPageStarted: (_) {
                setState(() {
                  _isLoading = true;
                });
              },
              onPageFinished: (_) {
                setState(() {
                  _isLoading = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
