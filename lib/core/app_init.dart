import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/get_it.dart';
import 'package:weather_app/core/network_service.dart';

class AppInit {
  AppInit._();

  static Future<AppInit> get create async {
    await appInitialized();
    return AppInit._();
  }

  static Future<void> appInitialized() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();
    // checkLocationPermission();
    await locatorSetUp();
    // InternetService().isInternetAvailable();
    /// Easy Localization
    /// Device Orientation
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    configLoading();
  }

  static void configLoading() {
    // EasyLoading.instance
    //   ..displayDuration = const Duration(seconds: 3)
    //   ..indicatorType = EasyLoadingIndicatorType.fadingFour
    //   ..loadingStyle = EasyLoadingStyle.custom
    //   ..indicatorSize = 45.0
    //   ..radius = 10.0
    //   ..progressColor = AppColorsStatic.primaryColor
    //   ..backgroundColor = Colors.white
    //   ..boxShadow = [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10, offset: const Offset(5, 5))]
    //   ..indicatorColor = AppColorsStatic.primaryColor
    //   ..textColor = Colors.black
    //   ..userInteractions = true
    //   ..successWidget= SvgPicture.asset(Assets.svgSucces)
    //   ..dismissOnTap = false;
  }

  // static Future<void> checkLocationPermission() async {
  //   var status = await Geolocator.checkPermission();
  //   if (status == LocationPermission.denied || status==LocationPermission.deniedForever) {
  //     // Request location permission
  //     await Geolocator.requestPermission().then((value) async {
  //       if (value == LocationPermission.denied || value==LocationPermission.deniedForever) {
  //         return checkLocationPermission();
  //       }
  //     });
  //   }
  // }

  static Future<Position> getLocation() async {
    return await Geolocator.getCurrentPosition();
  }
}

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
