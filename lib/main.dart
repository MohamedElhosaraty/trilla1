import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trilla1/cache/cache_helper.dart';
import 'package:trilla1/cubit/factor/orders_list/orders_list_cubit.dart';
import 'package:trilla1/screen/splash.dart';

import 'core/api/dio_consumer.dart';
import 'core/api/end_Points.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiBlocProvider(
      providers: [
        BlocProvider<OrdersListCubit>(
          create: (BuildContext context) => OrdersListCubit(
              api: DioConsumer(
                  dio: Dio(BaseOptions(headers: {
            "Authorization": "Bearer ${CacheHelper().getDataString(
              key: ApiKey.token,
            )}",
          })))),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: Locale("ar", ""),
          title: 'شحنتى',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Color(0xff186987),
              fontFamily: "Tajawal"),
          home: Splash_Screen(),
        ),
      ),
    );
  }
}
