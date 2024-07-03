import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trilla1/cache/cache_helper.dart';
import 'package:trilla1/core/api/dio_consumer.dart';
import 'package:trilla1/cubit/factor/login/login_cubit.dart';
import 'package:trilla1/screen/factor/bottombar.dart';
import 'package:trilla1/screen/factor/sign_up.dart';
import 'package:trilla1/screen/password.dart';
import 'package:trilla1/screen/welcome.dart';

import '../../core/api/end_Points.dart';
import '../driver/driver_bar.dart';

class Login1_Screen extends StatefulWidget {
  Login1_Screen({super.key});

  @override
  State<Login1_Screen> createState() => _Login1_ScreenState();
}

class _Login1_ScreenState extends State<Login1_Screen> {
  final phoneController = TextEditingController();

  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          LoginCubit(api: DioConsumer(dio: Dio())),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.loginModel.message)));
                if (CacheHelper().getDataString(key: ApiKey.type) == "user") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottom_Navigation(),
                      ));
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Driver_bar(),
                      ));
                }
              }
              if (state is LoginFailureState) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.h,
                      ),
                      Center(child: Image.asset('assets/images/image.png')),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .77,
                        decoration: BoxDecoration(
                            color: Color(0xff186987),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Center(
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 20),
                              child: TextFormField(
                                controller: phoneController,
                                textDirection: TextDirection.rtl,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'هذا الحقل مطلوب';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'رقم الهاتف',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff999797),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 20),
                              child: TextFormField(
                                controller: passwordController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'هذا الحقل مطلوب';
                                  }
                                  return null;
                                },
                                textDirection: TextDirection.rtl,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'كلمة المرور',
                                  labelStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff999797),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Password_Screen(),
                                      ));
                                },
                                child: Text(
                                  'هل نسيت كلمة المرور ؟',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            state is LoginLoadedState
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Color(0x97000004),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            BlocProvider.of<LoginCubit>(context)
                                                .login(
                                              phone: phoneController.text,
                                              password: passwordController.text,
                                            );
                                          }
                                        },
                                        child: Text(
                                          'تسجيل الدخول',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'لا تمتلك حساب ؟',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Sing1_Up(),
                                        ));
                                  },
                                  child: Text(
                                    '  إنشاء حساب جديد',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Welcome_Screen(),
                                      ));
                                },
                                child: Text(
                                  'رجوع للخلف',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
