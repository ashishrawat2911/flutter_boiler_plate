import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';
import 'package:flutter_boiler_plate/src/repository/preference_repository.dart';
import 'package:package_info/package_info.dart';

class CrashlyticsService {
  static recordFlutterError(FlutterErrorDetails details) {
    Crashlytics.instance.recordFlutterError(details);
    fullDeviceLog();
  }

  static recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    Crashlytics.instance.recordError(exception, stack);
    fullDeviceLog();
  }

  static fullDeviceLog() async {
    var prefRepo = AppInjector.get<PreferenceRepository>();
    var isLoggedIn = await prefRepo.isUserLogged();
    String packageName = (await PackageInfo.fromPlatform()).packageName;
    StringBuffer stringBuffer = StringBuffer("");
    stringBuffer.write("Platform : ${defaultTargetPlatform}");
    stringBuffer.write("Package Name : $packageName");
    stringBuffer.write("Date of Error : ${DateTime.now()}");
    if (isLoggedIn) {}
    Crashlytics.instance.log(stringBuffer.toString());
  }
}
