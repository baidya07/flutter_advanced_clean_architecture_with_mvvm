import 'package:flutter/material.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/forgotPassword/forgot_password.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/login/login.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/main/main_view.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/onboarding/onboarding.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/register/register.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/resources/string_manager.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/splash/splash.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());

      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());

      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: const Text(AppStrings.noRouteFound),),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      );
    });
  }
}
