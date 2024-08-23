// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

import 'package:flutter/material.dart';

/// instance of the navigtion class
NavigationService navigation = NavigationService();

/// navigator service
class NavigationService {
  /// key
  static late GlobalKey<NavigatorState> navigatorKey;

  /// to pop
  void pop(Object value) {
    return navigatorKey.currentState!.pop(value);
  }

  ///
  void goBack() {
    return navigatorKey.currentState!.pop();
  }

  ///
  bool canPop() {
    return navigatorKey.currentState!.canPop();
  }

  ///
  void checkAndPop() {
    if (canPop()) {
      return navigatorKey.currentState!.pop();
    }
  }

  ///
  void popUntil(String desiredRoute) {
    return navigatorKey.currentState!.popUntil((route) {
      return route.settings.name == desiredRoute;
    });
  }

  void popUntilFirst() {
    return navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  ///
  Future pushNamedAndRemoveUntil(
    String route, {
    bool popToInitial = false,
    bool keepFirst = false,
  }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      route,
      (Route<dynamic> route) => keepFirst ? route.isFirst : popToInitial,
    );
  }

  ///
  Future pushReplacementNamed(String desiredRoute, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(desiredRoute, arguments: arguments);
  }

  ///
  Future pushNamed(String desiredRoute, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(desiredRoute, arguments: arguments);
  }

  ///
  Future push(Widget desiredWidget, {dynamic arguments}) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) {
          return desiredWidget;
        },
      ),
    );
  }

  // Future<T?> pushNamedWithReturn<T>(String desiredRoute, {dynamic arguments}) {
  //   return navigatorKey.currentState!
  //       .pushNamed<T>(desiredRoute, arguments: arguments)
  //       .then((res) {
  //     return res;
  //   });
  // }

  ///
  NavigatorState? getNavigationState() {
    return navigatorKey.currentState;
  }

  ///
  BuildContext getNavigationContext() {
    return navigatorKey.currentState!.context;
  }

  ///
  // ignore: type_annotate_public_apis
  void popDialog(value) {
    return navigatorKey.currentState!.pop(value);
  }
}
