import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/core/force_update/force_update_dialog.dart';
import 'package:flutter_boiler_plate/src/repository/preference_repository.dart';
import 'package:flutter_boiler_plate/src/res/res.dart';
import 'package:flutter_boiler_plate/src/routes/router.gr.dart';
import 'package:flutter_boiler_plate/src/ui/screens/movie_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/force_update/force_update.dart';
import 'core/localization/app_localization.dart';
import 'core/localization/app_localization_deligate.dart';
import 'core/services/dynamic_links_service.dart';
import 'core/services/fcm_service.dart';
import 'core/utils/app_scrollbehavior.dart';
import 'di/app_injector.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  PreferenceRepository preferenceRepository =
      AppInjector.get<PreferenceRepository>();
  Locale locale;
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  void initState() {
    super.initState();
    /**
        Fetching the locale vale stored int the preferences
     */
    fetchLocale();
    /**
        Configure FirebasePushNotifications
     */
    FCMService.configureFirebaseMessaging();
    /**
        Initialize the Firebase Dynamic links
     */
    DynamicLinksService.initDynamicLinks();
    /**
        We are pre-fetching the the refer code
        that can me used later to create the dynamic links at the time we are creating the dynamic link
     */
    DynamicLinksService.preFetchReferCode();
    ForceUpdate.onForceUpdate((forceUpdate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showForceUpdateDialog(context, forceUpdate: forceUpdate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      // title: AppLocalizations.of(context).appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter(),
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      navigatorObservers: [
        /**
            Initializing the Firebase analytics for observing logs in the app
         */
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      supportedLocales: [
        Locale(
            AppLocalizations.langEnglish, AppLocalizations.langEnglishCountry),
        Locale(AppLocalizations.langArabic, AppLocalizations.langArabicCountry),
        Locale(AppLocalizations.langHindi, AppLocalizations.langHindiCountry),
      ],
      locale: locale,
      home: MovieScreen(),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: AppScrollBehavior(),
          child: child,
        );
      },
    );
  }

  Future<void> fetchLocale() async {
    locale = await preferenceRepository.fetchLocale();
  }
}
