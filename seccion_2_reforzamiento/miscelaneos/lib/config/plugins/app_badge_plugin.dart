// import 'package:flutter_app_badger/flutter_app_badger.dart';

// ! Error al instalar el paquete flutter_app_badger

// class AppBadgePlugin {

//   static Future<bool> get isBadgeSupported {
//     return FlutterAppBadger.isAppBadgeSupported();
//   }


//   static void updateBadgeCount(int count) async {
//     if (!await isBadgeSupported) {
//       print('Badge no soportado');
//       return;
//     }

//     FlutterAppBadger.updateBadgeCount(count);
//     if (count == 0) removeBadge();
//   }

//   static void removeBadge() async {
//     if (!await isBadgeSupported) {
//       print('Badge no soportado');
//       return;
//     }

//     FlutterAppBadger.removeBadge();
//   }


// }