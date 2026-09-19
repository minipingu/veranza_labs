import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:veranza_labs/views/home_screen.dart';
import 'package:veranza_labs/views/login_screen.dart';
import 'package:veranza_labs/views/splash_screen.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<SplashRoute>(path: '/home')
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
