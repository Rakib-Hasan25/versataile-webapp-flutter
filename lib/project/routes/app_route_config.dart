import 'package:go_router/go_router.dart';
import 'package:versatilewebsite/features/about.dart';
import 'package:versatilewebsite/features/home/home.dart';
import 'package:versatilewebsite/project/routes/app_route_constants.dart';

class AppRouter{


   final GoRouter router = GoRouter(
  routes: [
    GoRoute(
       name: MyAppRouteConstants.homeRouteName,
      path: '/',
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
       name: MyAppRouteConstants.aboutRouteName,
      path: '/about',
      builder: (context, state) => const About(),
    ),
  ],
);
}
