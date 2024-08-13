import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pay_in_app/src/config/routes/app_routes.dart';
import 'package:pay_in_app/src/core/utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _goNext() =>
      Navigator.pushReplacementNamed(context, Routes.buttomNavbarRoute);

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 2000), () => _goNext());
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(ImgAssets.Logo),
    ));
  }
}
