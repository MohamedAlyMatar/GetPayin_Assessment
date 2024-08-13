import "package:flutter/material.dart";
// import "package:pay_in_app/src/config/locale/app_localizations.dart";
import "package:pay_in_app/src/config/locale/app_localizations_setup.dart";
import "package:pay_in_app/src/config/routes/app_routes.dart";
import "package:pay_in_app/src/core/utils/hex_colors.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The root of the application.
  @override
  Widget build(BuildContext context) {
    //TODO: Change to MultiBlocProvider and add the lcoalization so it can work
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PayIn",
      theme: ThemeData(
        scaffoldBackgroundColor: HexColor("#f3f3f3"),
        useMaterial3: true,
      ),
      // locale: state.locale,
      localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
      supportedLocales: AppLocalizationsSetup.supportedLocales,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
