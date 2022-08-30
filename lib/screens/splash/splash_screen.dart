import 'package:flutter/material.dart';
import 'package:iot_app/common/constants/app_color.dart';
import 'package:iot_app/common/widgets/app_logo.dart';
import 'package:iot_app/screens/main/main_screen.dart';
import 'package:iot_app/util/hooks/setup_state_hooks.dart';
import 'package:utopia_arch/utopia_arch.dart';
import 'package:utopia_hooks/utopia_hooks.dart';
import 'package:utopia_utils/utopia_utils.dart';

class SplashScreen extends HookWidget {
  static const route = '/splash';
  static final routeConfig = RouteConfig.material(() => const SplashScreen());

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = context.navigator;

    useAsyncEffectAfterSetup(() async {
        navigator.pushReplacementNamed(MainScreen.route);
    },[]);

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
        child: const AppLogo(),
      ),
    );
  }
}
