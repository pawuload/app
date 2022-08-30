import 'package:flutter/material.dart';
import 'package:iot_app/common/widgets/app_background.dart';
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
    }, []);

    return Scaffold(
      body: Container(
        decoration: appBackground(),
        child: const AppLogo(),
      ),
    );
  }
}
