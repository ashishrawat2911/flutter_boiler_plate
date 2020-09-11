import 'package:flutter/cupertino.dart';

import 'app_localization.dart';

extension LocalizationsExtensions on BuildContext {
  AppLocalizations get localeValue => AppLocalizations.of(this);
}
