// import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// // ignore: depend_on_referenced_packages
// import 'package:timezone/timezone.dart' as tz;

// class NotificationService {
//   final FlutterLocalNotificationsPlugin notificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   int _notificationId = 0; // Bildirim ID'sini tutacak değişken
//   Future<void> initNotification() async {
//     AndroidInitializationSettings initializationSettingsAndroid =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');

//     var initializationSettingsIOS = DarwinInitializationSettings(
//         requestAlertPermission: true,
//         requestBadgePermission: true,
//         requestSoundPermission: true,
//         onDidReceiveLocalNotification:
//             (int id, String? title, String? body, String? payload) async {});

//     var initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     await notificationsPlugin.initialize(initializationSettings,
//         onDidReceiveNotificationResponse:
//             (NotificationResponse notificationResponse) async {});
//   }

//   notificationDetails() {
//     // RawResourceAndroidNotificationSound customSound =
//     //     const RawResourceAndroidNotificationSound('ezan');
//     return const NotificationDetails(
//         android: AndroidNotificationDetails('Channel', 'Channel Desc',
//             // sound: customSound,
//             importance: Importance.max,
//             priority: Priority.high,
//             playSound: true),
//         iOS: DarwinNotificationDetails());
//   }

//   Future<void> scheduleNotification({
//     required String title,
//     required String body,
//     required DateTime scheduledNotificationDateTime,
//   }) async {
//     _notificationId++; // Yeni bildirim için ID artışı

//     try {
//       await notificationsPlugin.zonedSchedule(
//         _notificationId, // Yeni ID kullanılıyor

//         title,
//         body,
//         tz.TZDateTime.from(
//           scheduledNotificationDateTime,
//           tz.local,
//         ),
//         await notificationDetails(),
//         androidAllowWhileIdle: true,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime,
//         payload: {
//           "scheduledDateTime": scheduledNotificationDateTime.toString(),
//         }.toString(),
//       );
//     } catch (e) {
//       print('Bildirim gönderilemedi: $e');
//     }
//   }

//   Future<void> cancelNotification(int id) async {
//     await notificationsPlugin.cancel(id);
//   }

//   Future<void> cancelAllNotifications() async {
//     await notificationsPlugin.cancelAll();
//     if (kDebugMode) {
//       print('Bildirimler iptal edildi...');
//     }
//   }

//   Future<void> printPendingNotifications() async {
//     final List<PendingNotificationRequest> pendingNotifications =
//         await notificationsPlugin.pendingNotificationRequests();
//     for (final notification in pendingNotifications) {
//       print('ID: ${notification.id}');
//       print('Scheduled Time: ${notification.payload}');
//       print('------------');
//     }
//   }
// }
