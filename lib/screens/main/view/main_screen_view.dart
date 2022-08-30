import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iot_app/common/constants/app_color.dart';
import 'package:iot_app/screens/main/state/main_screen_state.dart';

import '../../../common/widgets/app_logo.dart';

class MainScreenView extends StatelessWidget {
  final MainScreenState state;

  const MainScreenView({required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.background,
              AppColors.backgroundDarker,
            ],
          ),
        ),
      ),
    );
  }
}
