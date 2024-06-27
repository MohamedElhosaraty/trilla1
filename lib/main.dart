
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trilla1/cache/cache_helper.dart';
import 'package:trilla1/screen/splash.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar" , ""),
      title: 'شحنتى',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor:  Color(0xff186987),
      ),
      home: Splash_Screen(),
    );
  }
}