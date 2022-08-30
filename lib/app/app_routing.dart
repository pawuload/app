import 'package:iot_app/screens/main/main_screen.dart';
import 'package:iot_app/screens/splash/splash_screen.dart';
import 'package:utopia_arch/utopia_arch.dart';


class AppRouting {
  static final routes = <String, RouteConfig>{
    SplashScreen.route: SplashScreen.routeConfig,
    MainScreen.route: MainScreen.routeConfig,
  };

  static const initialRoute = SplashScreen.route;
}
