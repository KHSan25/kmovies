import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:k_movies/views/home/home_screen.dart';
import 'package:k_movies/views/settings/settings_screen.dart';
import 'package:k_movies/components/utils.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static GoRouter goRouter = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    initialLocation: HomeScreen.routeName,
    routes: [
      GoRoute(
        name: HomeScreen.routeName,
        path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: SettingScreen.routeName,
            path: SettingScreen.routeName.getRoutePath(),
            builder: (context, state) => const SettingScreen(),
          )
        ],
      )
    ],
  );
}
