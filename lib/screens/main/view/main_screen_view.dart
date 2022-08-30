import 'package:flutter/material.dart';
import 'package:iot_app/common/widgets/app_background.dart';
import 'package:iot_app/screens/main/state/main_screen_state.dart';
import 'package:iot_app/screens/main/widget/main_screen_connect_button.dart';

class MainScreenView extends StatelessWidget {
  final MainScreenState state;

  const MainScreenView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: appBackground(),
        child: Stack(
          children: [
            const MainScreenConnectButton(),
          ],
        ),
      ),
    );
  }
}
