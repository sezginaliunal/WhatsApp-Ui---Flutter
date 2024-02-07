// import 'package:flutter/foundation.dart';
// import 'package:permission_handler/permission_handler.dart';

// Future notificationPermission() async {
//   var status = await Permission.notification.status;
//   if (await Permission.notification.isGranted) {
//     if (status.isGranted) {
//       if (kDebugMode) {
//         print('İzin verili Bildirim : ${status.isGranted}');
//       }
//     } else {
//       Permission.notification.request().then((value) {});
//     }
//   } else {
//     print('İzin verilmedi Bildirim ${status.isGranted}');
//   }
// }

// Future locationPermission() async {
//   var status = await Permission.location.status;
//   if (await Permission.location.serviceStatus.isEnabled) {
//     if (status.isGranted) {
//       if (kDebugMode) {
//         print('İzin verili Lokasyon : ${status.isGranted}');
//       }
//     } else {
//       Permission.location.request().then((value) {});
//     }
//   } else {
//     print('İzin verilmedi Lokasyon ${status.isGranted}');
//   }
// }

// Future<void> speechPermission() async {
//     // Ses izni için izin durumunu kontrol et
//     PermissionStatus status = await Permission.speech.request();

//     // İzin durumunu kontrol et
//     if (status.isGranted) {
//       // İzin verildiyse
//       print('Ses izni verildi');
//     } else {
//       // İzin verilmediyse veya daha önce reddedildiyse
//       print('Ses izni reddedildi');
//     }
//   }
