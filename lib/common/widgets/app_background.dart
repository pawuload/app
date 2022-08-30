import 'package:flutter/cupertino.dart';
import 'package:iot_app/common/constants/app_color.dart';

BoxDecoration appBackground() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.background,
        AppColors.backgroundDarker,
      ],
    ),
  );
}
