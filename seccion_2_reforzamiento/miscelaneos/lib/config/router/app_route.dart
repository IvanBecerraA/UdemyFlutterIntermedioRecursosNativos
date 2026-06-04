import 'package:go_router/go_router.dart';
import 'package:miscelaneos/presentations/screens/home/home_screen.dart';
import 'package:miscelaneos/presentations/screens/permissions/permissions_screen.dart';



final router = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen(),
    ),

  ]
);