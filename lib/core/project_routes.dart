import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/project_bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app/widget/app_widget.dart';
import 'package:weather_app/widget/custom_scaffold.dart';

import '../screens/start_page.dart';
import '../widget/asking_location.dart';
import '../widget/asking_permission.dart';
import 'app_init.dart';

class ProjectRoutes {
  static MaterialPageRoute startPage() {
    return MaterialPageRoute(builder: (context) {
      return BlocProvider(
        create: (context) =>
            WeatherBloc()..add(const WeatherEvent.getUserLocationWeather()),
        child: const StartPage(),
      );
    });
  }

  static MaterialPageRoute initialPage() {
    return MaterialPageRoute(builder: (context) {
      return const CustomScaffold(
        child: Center(
            child: Text(
          "Lokatsiya ruxsatlari kutilmoqda...",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      );
    });
  }

  static PageRoute onGenerateRoute() {
    determinePosition().then((value) {
      LocationPermission permission = value;
      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Navigator.of(NavigationService.navigatorKey.currentContext!)
            .pushReplacement(MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) =>
                WeatherBloc()..add(const WeatherEvent.getUserLocationWeather()),
            child: const StartPage(),
          );
        }));
      }
    });
    return initialPage();
  }

  static Future<LocationPermission> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Lokatsiya xizmatini tekshirish
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await showAskingLocationDialog(
          context: NavigationService.navigatorKey.currentContext!);
      return determinePosition();
    }

    // Ruxsatlarni tekshirish va so‘rash
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        await showAskingPermissionDialog(
            context: NavigationService.navigatorKey.currentContext!);
        return determinePosition();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      await showAskingPermissionDialog(
          context: NavigationService.navigatorKey.currentContext!);
      return permission;
    }

    return permission;
  }

  static Future<void> showAskingPermissionDialog(
      {required BuildContext context}) async {
    await showDialog<bool?>(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return const Dialog(
            backgroundColor: Colors.white,
            insetPadding: EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: AskingPermissionDialog(),
          );
        });
  }

  static Future<void> showAskingLocationDialog(
      {required BuildContext context}) async {
    await showDialog<bool?>(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return const Dialog(
            backgroundColor: Colors.white,
            insetPadding: EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: AskingLocationDialog(),
          );
        });
  }
}
