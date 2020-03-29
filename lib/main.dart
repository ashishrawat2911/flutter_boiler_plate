import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/app.dart';
import 'package:flutter_boiler_plate/src/di/app_config.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppConfig();
  runApp(App());
}
