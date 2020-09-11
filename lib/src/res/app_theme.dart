import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/res/res.dart';

import 'app_fonts.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: AppFonts.roboto,
      primaryColor: AppColors.primaryColor,
      backgroundColor: AppColors.backGroundColor,
      scaffoldBackgroundColor: AppColors.white,
      cardTheme: CardTheme(elevation: 1, margin: EdgeInsets.only()),
      indicatorColor: AppColors.primaryColor,
      accentColor: AppColors.primaryColor,
      buttonTheme: ButtonThemeData(),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.black,
        labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      appBarTheme: AppBarTheme(
          color: AppColors.white,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: TextTheme(
            title: AppTextStyles.medium20Color242424,
          )),
    );
  }
}
