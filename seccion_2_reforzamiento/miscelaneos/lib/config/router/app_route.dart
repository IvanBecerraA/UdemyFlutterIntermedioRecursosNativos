import 'package:go_router/go_router.dart';
import 'package:miscelaneos/presentations/screens/home/home_screen.dart';
import 'package:miscelaneos/presentations/screens/permissions/permissions_screen.dart';
import 'package:miscelaneos/presentations/screens/pokemons/pomemons_screen.dart';
import 'package:miscelaneos/presentations/screens/sensors/accelerometer_screen.dart';
import 'package:miscelaneos/presentations/screens/sensors/compass_screen.dart';
import 'package:miscelaneos/presentations/screens/sensors/gyroscope_ball_screeen.dart';
import 'package:miscelaneos/presentations/screens/sensors/gyroscope_screeen.dart';
import 'package:miscelaneos/presentations/screens/sensors/magnetometer_screeen.dart';



final router = GoRouter(
  routes: [

    //! General
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen(),
    ),

    //! Sensors
    GoRoute(
      path: '/gyroscope',
      builder: (context, state) => const GyroscopreScreen(),
    ),

    GoRoute(
      path: '/accelerometer',
      builder: (context, state) => const AccelerometerScreen(),
    ),

    GoRoute(
      path: '/magnetometer',
      builder: (context, state) => const MagnetometerScreen(),
    ),

    GoRoute(
      path: '/gyroscope-ball',
      builder: (context, state) => const GyroscopreBallScreen(),
    ),

    GoRoute(
      path: '/compass',
      builder: (context, state) => const CompassScreen(),
    ),

    //! Pokemons
    GoRoute(
      path: '/pokemons',
      builder: (context, state) => const PokemonScreen(),
      routes: [
        // TODO:
        // GoRoute(
        //   path: ':id'
        //   builder: (context, state) {
        //     return
        //   }
        // ),
      ]
    ),

  ]
);