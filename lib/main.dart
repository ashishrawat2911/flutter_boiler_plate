import 'package:flutter/material.dart';
import 'package:flutter_mvvm/src/app.dart';
import 'package:flutter_mvvm/src/di/app_config.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppConfig();
  runApp(App());
}
