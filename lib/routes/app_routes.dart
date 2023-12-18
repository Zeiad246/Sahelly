import 'package:flutter/material.dart';
import 'package:sahellyprototype/presentation/login_active_screen/login_active_screen.dart';
import 'package:sahellyprototype/presentation/signup_one_tab_container_screen/signup_one_tab_container_screen.dart';
import 'package:sahellyprototype/presentation/signup_three_tab_container_screen/signup_three_tab_container_screen.dart';
import 'package:sahellyprototype/presentation/iphone_13_mini_five_screen/iphone_13_mini_five_screen.dart';
import 'package:sahellyprototype/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginActiveScreen = '/login_active_screen';

  static const String signupOnePage = '/signup_one_page';

  static const String signupOneTabContainerScreen =
      '/signup_one_tab_container_screen';

  static const String signupTwoPage = '/signup_two_page';

  static const String signupThreePage = '/signup_three_page';

  static const String signupThreeTabContainerScreen =
      '/signup_three_tab_container_screen';

  static const String iphone13MiniFiveScreen = '/iphone_13_mini_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginActiveScreen: (context) => LoginActiveScreen(),
    signupOneTabContainerScreen: (context) => SignupOneTabContainerScreen(),
    signupThreeTabContainerScreen: (context) => SignupThreeTabContainerScreen(),
    iphone13MiniFiveScreen: (context) => Iphone13MiniFiveScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
