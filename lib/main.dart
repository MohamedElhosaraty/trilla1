import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/history.dart';
import 'package:trilla1/screen/factor/requests.dart';
import 'package:trilla1/screen/factor/sign_up.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar" , ""),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Requests_Screen(),
    );
  }
}