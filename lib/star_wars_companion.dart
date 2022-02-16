import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars_companion/app/router/app_router.dart';
import 'package:star_wars_companion/core/avatar/controllers/avatar_bloc.dart';
import 'package:star_wars_companion/injection.dart';
import 'app/theme/app_theme.dart';

class StarWarsCompanion extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final AppRouter _appRouter = AppRouter();
  final String appName = "Star Wars Companion";

  StarWarsCompanion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AvatarBloc>()..add(GetSavedAvatarEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: AppTheme.theme,
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
