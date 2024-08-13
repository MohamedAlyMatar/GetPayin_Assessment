import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pay_in_app/src/core/utils/app_strings.dart';
import 'package:pay_in_app/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/bottom_navbar.dart';
import 'package:pay_in_app/src/features/splash/presentation/pages/splash_screen.dart';
import 'package:pay_in_app/src/features/wallet/presentation/pages/wallet.dart';

class Routes {
  static const String initialRoute = "/";
  static const String buttomNavbarRoute = "/buttomNavbar";
  static const String walletscreen = "/wallet";
}

// Genrated Routes
class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case Routes.buttomNavbarRoute:
        return MaterialPageRoute(
            builder: (contect) => BlocProvider(
                create: (context) => HomeBloc(), child: const BottomNavbar()));

      case Routes.walletscreen:
        return MaterialPageRoute(
            builder: (contect) => BlocProvider(
                create: (context) => HomeBloc(), child: const Wallet()));

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
