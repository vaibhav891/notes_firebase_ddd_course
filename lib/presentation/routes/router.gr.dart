// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:notes_firebase_ddd_course/UI/splash_page.dart';
import 'package:notes_firebase_ddd_course/UI/login.dart';

abstract class Routes {
  static const splashPage = '/';
  static const appBodyRoute = '/app-body-route';
  static const all = {
    splashPage,
    appBodyRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.appBodyRoute:
        if (hasInvalidArgs<AppBodyArguments>(args)) {
          return misTypedArgsRoute<AppBodyArguments>(args);
        }
        final typedArgs = args as AppBodyArguments ?? AppBodyArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => AppBody(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//AppBody arguments holder class
class AppBodyArguments {
  final Key key;
  AppBodyArguments({this.key});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushAppBodyRoute({
    Key key,
  }) =>
      pushNamed(
        Routes.appBodyRoute,
        arguments: AppBodyArguments(key: key),
      );
}
