import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/utils/app_theme.dart';
import 'package:flutter_boiler_plate/src/utils/string_constants.dart';
import 'package:flutter_boiler_plate/src/view/routes/router.gr.dart';
import 'package:flutter_boiler_plate/src/view/screens/movieScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsConstants.app_name,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(),
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigator.key,
      home: MovieScreen(),
    );
  }
}
