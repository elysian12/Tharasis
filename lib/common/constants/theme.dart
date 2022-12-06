// file to create your app theme and stuff

import 'package:flutter/material.dart';
import './colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.primaryColor,
  );
}
