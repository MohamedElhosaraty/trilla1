import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trilla1/screen/welcome.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),() =>

        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome_Screen(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Lottie.asset('assets/images/splash.json',),
            Lottie.asset('assets/images/splash2.json',)
          ],
        ),
      ),
    );
  }
}
