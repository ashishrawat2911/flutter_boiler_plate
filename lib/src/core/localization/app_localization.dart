import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boiler_plate/src/core/localization/app_localization_deligate.dart';

class AppLocalizations {
  //Languages
  static const String langArabic = "ar";
  static const String langEnglish = "en";
  static const String langHindi = "hi";

  //LanguagesCountry
  static const String langArabicCountry = "";
  static const String langEnglishCountry = "US";
  static const String langHindiCountry = "";

  final Locale locale;
  Map<String, String> _localizedStrings;

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Future<bool> load() async {
    var jsonString =
        await rootBundle.loadString('i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(
          key, value.toString().replaceAll(r"\'", "'").replaceAll(r"\t", " "));
    });

    return true;
  }

  String translate(String key) {
    if (_localizedStrings[key] == null) {
      debugPrint("----------------------------------------------------");
      debugPrint("$key key of Language ${locale.languageCode} is null");
      debugPrint("----------------------------------------------------");
    }
    return _localizedStrings[key] ?? "";
  }

  String get appName => translate("app_name");

  String get version_out_dated_message =>
      translate("version_out_dated_message");

  String get versionOutDatedDesc => translate("version_out_dated_desc");

  String get update => translate("update");
}
