import 'dart:async';

import 'package:flutter/material.dart';

import 'app_localization.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  static const String TAG = "AppLocalizations";

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return [
      AppLocalizations.langEnglish,
      AppLocalizations.langHindi,
      AppLocalizations.langArabic
    ].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    var localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
