import 'package:go_router/go_router.dart' show GoRoute, GoRouter, RouteBase;
import 'package:travelogue/src/splash/splash.dart' show SplashPage;

final GoRouter router = GoRouter(
  initialLocation: SplashPage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: SplashPage.routeName,
      builder: (context, state) => const SplashPage(),
    ),
  ],
);
