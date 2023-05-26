import 'package:flutter/material.dart';
import 'package:u_learning/pages/welcome/views/welcome_screen.dart';
import '../utils/error_screen.dart';
import 'navigation.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcomeScreen';


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return _buildRoute(const WelcomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    // return MaterialPageRoute(
    //     builder: (_) => const Scaffold(
    //           backgroundColor: Colors.white,
    //         ));
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
