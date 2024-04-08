
// FirebaseMessaging messaging = FirebaseMessaging.instance;


// NotificationSettings settings = await messaging.requestPermission(
//   alert: true,
//   announcement: false,
//   badge: true,
//   carPlay: false,
//   criticalAlert: false,
//   provisional: true,
//   sound: true,
// );

// if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//   String? token = await FirebaseMessaging.instance.getToken();
//   //Save the token to the database
// } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//   String? token = await FirebaseMessaging.instance.getToken();
//   //Save the token to the database
// } else {
//   print('User declined or has not accepted permission');
// }