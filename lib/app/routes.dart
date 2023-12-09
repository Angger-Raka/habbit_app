import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:settings/settings.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: NamedRoutes.initial,
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: NamedRoutes.home,
      builder: (context, state) => const HomePage(),
    )
  ],
);
