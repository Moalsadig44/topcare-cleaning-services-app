import 'package:flutter/cupertino.dart';
import 'package:topcare/utilities/routes.dart';
import 'package:topcare/views/pages/landing_page.dart';
import 'package:topcare/views/pages/login_page.dart';
import 'package:topcare/views/pages/register_page.dart';

//making routing setings following ongenerate function
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.registerPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const RegistePage(),
      );
    case AppRoutes.LoginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const LoginPage(),
      );
    case AppRoutes.LandingPageRoute:
    //switching to our landing+ page
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
      );
    // function returning page
  }
}
