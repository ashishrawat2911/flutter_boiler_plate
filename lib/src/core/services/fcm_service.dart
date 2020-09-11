import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';
import 'package:flutter_boiler_plate/src/repository/preference_repository.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FCMService {
  static PreferenceRepository preferenceRepository =
      AppInjector.get<PreferenceRepository>();

  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  static Future<void> configureFirebaseMessaging() async {
    _firebaseMessaging.setAutoInitEnabled(false);
    _fetchDeviceToken();
    /*
    Push notifications is only allowed if user has approved for it.
    */

    if (Platform.isIOS) _iOSPermission();
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      _initializeLocalNotification(
          message["notification"]["body"].toString(), message);
    }, onResume: (Map<String, dynamic> message) async {
      _onSelectedNotification(message);
    }, onLaunch: (Map<String, dynamic> message) async {
      _onSelectedNotification(message);
    });
  }

  static Future<void> _fetchDeviceToken() async {
    /*
    Fetching the device token and store it into the shared preferences,
    which will be used for the API's
    */
    var deviceToken = await _firebaseMessaging.getToken();
    await preferenceRepository.setDeviceToken(deviceToken);
  }

  static unRegisterNotification() {
    /*
    Unregister the firebase push notifications
    */
    _firebaseMessaging.setAutoInitEnabled(false);
    _firebaseMessaging.deleteInstanceID();
  }

  static void _iOSPermission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(badge: true, alert: true, sound: true));

    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
  }

  static void _initializeLocalNotification(
      String body, Map<String, dynamic> message) async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        new FlutterLocalNotificationsPlugin();
    String groupKey = 'com.flutter_boiler_plate.app.groupkey';
    String groupChannelId = 'com.flutter_boiler_plate.app.channelid';
    String groupChannelName = 'com.flutter_boiler_plate.app.channelname';
    String groupChannelDescription = 'grouped channel description';
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_logo');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) async {
      _onSelectedNotification(message);
    });
    AndroidNotificationDetails firstNotificationAndroidSpecifics =
        new AndroidNotificationDetails(
            groupChannelId, groupChannelName, groupChannelDescription,
            importance: Importance.Max,
            priority: Priority.High,
            groupKey: groupKey);

    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      firstNotificationAndroidSpecifics,
      iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
        1,
        message["notification"]["title"].toString().toString(),
        body,
        platformChannelSpecifics,
        payload: 'item x');
  }

  static void _onSelectedNotification(Map<String, dynamic> message) {
    var newdata = message['data'] ?? message;
    // var messageData = message['data'] ?? newdata;
  }
}
