import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:star_wars_companion/app/theme/app_background_decoration.dart';
import 'package:star_wars_companion/core/constants/app_bar_constants.dart';
import 'package:star_wars_companion/core/constants/route_constants.dart';
import 'package:star_wars_companion/app/theme/app_colors.dart';
import 'package:star_wars_companion/core/avatar/controllers/avatar_bloc.dart';
import 'package:star_wars_companion/core/widgets/app_bar_title/app_bar_title.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  final String avatarEditTitle = "Edite seu avatar";

  Future<void> _saveAvatar() async {
    context.read<AvatarBloc>().add(
        SaveAvatarEvent(await FluttermojiFunctions().encodeMySVGtoString()));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: AppBarConstants.appBarHeight,
          backgroundColor: AppColors.backgroundColor,
          title: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: AppColors.accentColor,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: AppBarTitle(
                websiteButtonBackgroundColor:
                    AppColors.accentColor.withOpacity(0.5),
                avatarButtonBackgroundColor:
                    AppColors.accentColor.withOpacity(0.5),
                onWebsiteButtonPressed: () async {
                  await _saveAvatar();

                  Navigator.of(context).pushReplacementNamed(
                    RouteConstants.websiteRoute,
                  );
                },
                onAvatarButtonPressed: () async {
                  await _saveAvatar();

                  Navigator.of(context).popUntil(
                    (route) => route.settings.name == RouteConstants.homeRoute,
                  );
                },
              ),
            ),
          ),
        ),
        body: Container(
          decoration: AppBackgroundDecoration.avatarBackgroundDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                FluttermojiCircleAvatar(
                  backgroundColor: AppColors.accentColor,
                  radius: 100,
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: FluttermojiCustomizer(
                  outerTitleText: avatarEditTitle,
                ),
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        await _saveAvatar();
        return true;
      },
    );
  }
}
