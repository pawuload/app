import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iot_app/screens/main/state/main_screen_state.dart';
import 'package:iot_app/screens/main/view/main_screen_view.dart';
import 'package:utopia_arch/utopia_arch.dart';

class MainScreen extends HookWidget {
  static const route = '/main';
  static final routeConfig = RouteConfig.material(() => const MainScreen());

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = useMainScreenState();
    return MainScreenView(state: state);
  }
}
