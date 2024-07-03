import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trilla1/core/api/end_Points.dart';
import 'package:trilla1/screen/welcome.dart';

import '../cache/cache_helper.dart';
import 'driver/driver_bar.dart';
import 'factor/bottombar.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 5),
        () => Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                if ((CacheHelper().getDataString(key: ApiKey.token) != null ||
                        CacheHelper().getDataString(key: ApiKey.token) != "") &&
                    CacheHelper().getDataString(key: ApiKey.type) == "user") {
                  return Bottom_Navigation();
                } else if ((CacheHelper().getDataString(key: ApiKey.token) !=
                            null ||
                        CacheHelper().getDataString(key: ApiKey.token) != "") &&
                    CacheHelper().getDataString(key: ApiKey.type) == "driver") {
                  return Driver_bar();
                } else {
                  return Welcome_Screen();
                }
              },
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Lottie.asset(
              'assets/images/splash.json',
            ),
            Lottie.asset(
              'assets/images/splash2.json',
            ),
          ],
        ),
      ),
    );
  }
}
