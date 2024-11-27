import 'package:flutter/material.dart';
import 'package:flutter_open_app_settings/flutter_open_app_settings.dart';
import 'package:geolocator/geolocator.dart';

class AskingPermissionDialog extends StatelessWidget {
  const AskingPermissionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Permission denied', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: "Poppins",
          )),
          const Text(
            'Allow access to location',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 17),
          InkWell(
            onTap: () async {
              FlutterOpenAppSettings.openAppsSettings(settingsCode: SettingsCode.APP_SETTINGS,
                  onCompletion: () async{
                    if(await Geolocator.isLocationServiceEnabled()){
                      Navigator.of(context).pop();
                    }
                    print('object');
                  });
              // await openAppSettings();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Settings',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),),
            ),
          ),
        ],
      ),
    );;
  }
}