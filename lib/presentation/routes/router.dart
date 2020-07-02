import 'package:auto_route/auto_route_annotations.dart';
import 'package:notes_firebase_ddd_course/UI/login.dart';
import 'package:notes_firebase_ddd_course/UI/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  AppBody appBodyRoute;
}
