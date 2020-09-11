import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/core/localization/app_localization_extentions.dart';
import 'package:flutter_boiler_plate/src/core/utils/url_launcher.dart';
import 'package:flutter_boiler_plate/src/res/store_urls.dart';

showForceUpdateDialog(BuildContext context, {bool forceUpdate = false}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () {
          if (forceUpdate) {
            return Future.value(false);
          } else {
            return Future.value(true);
          }
        },
        child: SimpleDialog(
          title: Text(context.localeValue.version_out_dated_message),
          contentPadding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
          children: <Widget>[
            Text(context.localeValue.versionOutDatedDesc),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: new Text(context.localeValue.update),
                onPressed: () {
                  final url =
                      Platform.isAndroid ? StoreUrls.Android : StoreUrls.IOS;
                  UrlLauncher.launchURL(url);
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
