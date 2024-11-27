// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:weather_app/core/app_init.dart';
// import 'package:weather_app/core/project_routes.dart';
//
// class InternetService {
//   late StreamSubscription<ConnectivityResult> connectivitySubscription;
//   ConnectivityResult? lastConnectivityResult;
//   bool connectivityResultFirst = false;
//
//   Future<bool> isInternetAvailable() async {
//     // Joriy ulanish holatini olish
//     lastConnectivityResult = (await Connectivity().checkConnectivity()) as ConnectivityResult?;
//
//     // Ulanish holatini kuzatishni boshlash
//     connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen(_updateConnectionStatus as void Function(List<ConnectivityResult> event)?) as StreamSubscription<ConnectivityResult>;
//
//     if (lastConnectivityResult == ConnectivityResult.mobile ||
//         lastConnectivityResult == ConnectivityResult.wifi) {
//       return true;
//     } else {
//       connectivityResultFirst = true;
//       Navigator.of(NavigationService.navigatorKey.currentContext!)
//           .push(ProjectRoutes.networkConnectionPage());
//       return false;
//     }
//   }
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     debugPrint('Connection Status: ${result.name}');
//
//     if (result == ConnectivityResult.none) {
//       // Agar yangi holat ham "none" bo'lsa, hech qanday amal bajarilmaydi
//       if (lastConnectivityResult == ConnectivityResult.none) {
//         return;
//       }
//       lastConnectivityResult = result;
//       Navigator.of(NavigationService.navigatorKey.currentContext!)
//           .push(ProjectRoutes.networkConnectionPage());
//     } else {
//       if (lastConnectivityResult == ConnectivityResult.mobile ||
//           lastConnectivityResult == ConnectivityResult.wifi) {
//         return;
//       }
//       lastConnectivityResult = result;
//
//       if (connectivityResultFirst) {
//         Navigator.of(NavigationService.navigatorKey.currentContext!)
//             .pushReplacement(ProjectRoutes.onGenerateRoute());
//         connectivityResultFirst = false;
//       } else {
//         Navigator.of(NavigationService.navigatorKey.currentContext!)
//             .pop();
//       }
//     }
//   }
//
//   // Kuzatuvchini tozalash
//   void dispose() {
//     connectivitySubscription.cancel();
//   }
// }
