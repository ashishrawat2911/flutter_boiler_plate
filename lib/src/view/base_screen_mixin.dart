import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/utils/app_colors.dart';
import 'package:flutter_boiler_plate/src/utils/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';

typedef onConnectionChanged<T> = T Function(T value);
mixin BaseScreenMixin {
  ProgressDialog progressDialog;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  bool isOffline = false;
  ConnectionStatus connectionStatus = ConnectionStatus.getInstance();

  Future<bool> isNetworkConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  void showLoading(BuildContext context, String message) {
    progressDialog = ProgressDialog(context, isDismissible: false);
    progressDialog.update(
      message: message,
    );
    progressDialog.style(
        backgroundColor: Theme.of(context).backgroundColor,
        messageTextStyle: TextStyle(color: AppColors.black),
        progressWidget: Center(child: CircularProgressIndicator()));
    progressDialog.show();
  }

  void hideLoading() {
    progressDialog?.hide();
  }

  showSnackBar(
      {@required Widget body, @required GlobalKey<ScaffoldState> scaffoldKey}) {
    scaffoldKey.currentState.hideCurrentSnackBar();
    scaffoldKey.currentState.showSnackBar(new SnackBar(content: body));
  }

  showToast(String msg, BuildContext context,
      {int duration = 1,
      int gravity = 0,
      double backgroundRadius = 20,
      Border border}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      //backgroundColor: Colors.red,
      textColor: Theme.of(context).textTheme.caption.color,
      fontSize: 16.0,
    );
  }

  void onConnectionChange(onConnectionChanged connectionChanged) {
    connectionStatus.initialize();
    connectionStatus.connectionChange.listen((value) {
      connectionChanged(value);
    });
  }
}
