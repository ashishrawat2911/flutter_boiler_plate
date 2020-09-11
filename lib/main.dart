import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc_observer/bloc_observer.dart';
import 'package:flutter_boiler_plate/src/core/flavor/flavor_config.dart';
import 'package:flutter_boiler_plate/src/core/services/crashlytics_service.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';

import 'src/app.dart';

void main() {
  runZonedGuarded(() {
    /**
        Allowing the widget binding so we can have the control to observe the widget lifecycle
     */

    WidgetsFlutterBinding.ensureInitialized();
    /**
        Initialize the flavor for the app , we have provided a default environment for the app,
        We can pass the environment from the console
        flutter build apk --dart-define=environment=Testing
        if we do not pas it , it will automatically pic up the default environment which is mentioned below
     */
    FlavorConfig.setUpFlavor(defaultEnvironment: FlavorEnvironment.Dev);
    /**
        Initialize the dependency injection
     */
    AppInjector.create();
    /**
        We are using the flutter_bloc to handle state and events in the app, we are using
        BlocSupervisor to see the logs for the Bloc events
     */
    Bloc.observer = MyBlocObserver();
    /**
        We are using Firebase Crashlytics to record error
     */
    Crashlytics.instance.enableInDevMode = false;
    FlutterError.onError = CrashlyticsService.recordFlutterError;
    runApp(App());
  }, (error, stack) {
    CrashlyticsService.recordError(error, stack);
  }, zoneSpecification: ZoneSpecification());
}
