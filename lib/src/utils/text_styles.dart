import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle appBarTextStyleTheme(bool isDark) =>
      TextStyle(color: isDark ? AppColors.white : AppColors.black);
}
