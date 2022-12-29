import 'package:flutter/cupertino.dart';
import 'package:marwanecommerceapp/utilities/routes.dart';
import 'package:marwanecommerceapp/views/pages/home_page.dart';
import 'package:marwanecommerceapp/views/pages/landing_page.dart';
import 'package:marwanecommerceapp/views/pages/login_page.dart';
import 'package:marwanecommerceapp/views/pages/search_page.dart';
import 'package:marwanecommerceapp/views/pages/signup_page.dart';
import 'package:marwanecommerceapp/views/widgets/bottom_navbar.dart';

import '../views/pages/forgot_password_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => BottomNavBar(),
      );
    case AppRoutes.signUpPageRoute:
      return CupertinoPageRoute(
        builder: (_) => SignUpPage(),
      );
    case AppRoutes.homePageRoute:
      return CupertinoPageRoute(
        builder: (_) => HomePage(),
      );
    case AppRoutes.searchPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const SearchPage(),
      );
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => LandingPage(),
      );
  }
}
