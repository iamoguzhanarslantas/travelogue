import 'package:go_router/go_router.dart' show GoRoute, GoRouter, RouteBase;
import 'package:travelogue/src/home/home.dart' show MainPage;
import 'package:travelogue/src/splash/splash.dart' show SplashPage;

final GoRouter router = GoRouter(
  initialLocation: MainPage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: SplashPage.routeName,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: MainPage.routeName,
      builder: (context, state) => const MainPage(),
    ),
  ],
);
