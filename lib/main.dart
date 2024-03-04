
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trilla1/screen/driver/driver_categry.dart';
import 'package:trilla1/screen/driver/driver_file.dart';
import 'package:trilla1/screen/driver/driver_notification.dart';
import 'package:trilla1/screen/driver/driver_password.dart';
import 'package:trilla1/screen/driver/driver_person.dart';
import 'package:trilla1/screen/driver/driver_request.dart';
import 'package:trilla1/screen/driver/driver_setting.dart';
import 'package:trilla1/screen/driver/login/driver_information.dart';
import 'package:trilla1/screen/driver/login/driver_information2.dart';
import 'package:trilla1/screen/driver/payment_time.dart';
import 'package:trilla1/screen/factor/addrequest.dart';
import 'package:trilla1/screen/factor/bottombar.dart';
import 'package:trilla1/screen/factor/category.dart';
import 'package:trilla1/screen/factor/edit_password.dart';
import 'package:trilla1/screen/factor/history.dart';
import 'package:trilla1/screen/factor/notification.dart';
import 'package:trilla1/screen/factor/person.dart';
import 'package:trilla1/screen/factor/person_file.dart';
import 'package:trilla1/screen/factor/request_detilts/accept.dart';
import 'package:trilla1/screen/factor/request_detilts/processing.dart';
import 'package:trilla1/screen/factor/request_detilts/unaccept.dart';
import 'package:trilla1/screen/factor/request_detilts/waiting.dart';
import 'package:trilla1/screen/factor/requests.dart';
import 'package:trilla1/screen/factor/settings.dart';
import 'package:trilla1/screen/factor/sign_up.dart';
import 'package:trilla1/screen/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar" , ""),
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor:  Color(0xff186987),
      ),
      home: Splash_Screen(),
    );
  }
}