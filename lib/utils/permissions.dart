

// import 'package:geolocator/geolocator.dart';
// import 'package:permission_handler/permission_handler.dart';

// Future<bool?> checkLocationPermission() async {
//   bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
//   LocationPermission permission;
//   switch (isServiceEnabled) {
//     case true:
//       permission = await Geolocator.checkPermission();
//       switch (permission) {
//         case LocationPermission.denied:
//           permission = await Geolocator.requestPermission();
//           switch (permission) {
//             case LocationPermission.denied:
//               return false;
//             case LocationPermission.deniedForever:
//               return false;
//             case LocationPermission.whileInUse:
//               return true;
//             case LocationPermission.always:
//               return true;
//             case LocationPermission.unableToDetermine:
//               return null;
//           }
//         case LocationPermission.deniedForever:
//           return false;
//         case LocationPermission.whileInUse:
//           return true;
//         case LocationPermission.always:
//           return true;
//         case LocationPermission.unableToDetermine:
//           // TODO: Handle this case.
//           break;
//       }
//       break;
//     case false:
//       return false;
//   }
//   return false;
// }

// Future<bool> getCameraPermission() async {
//   final status = await Permission.camera.request();
//   if (status.isGranted) {
//     return true;
//     // We can now access the camera.
//   } else {
//     return false;
//     // We didn't ask for permission yet or the permission has been denied before but not permanently.
//   }
// }

