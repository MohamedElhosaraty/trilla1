import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/driver_bar.dart';
import 'package:trilla1/screen/driver/login/sign_up.dart';
import 'package:trilla1/screen/password.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Center(child: Image.asset('assets/images/image.png')),
              SizedBox(
                height: 90,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.77,
                decoration: BoxDecoration(
                    color: Color(0xff186987),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
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
                      height: 34,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
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
                      height: 18,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Password_Screen(),));
                        },
                        child: Text(
                          'هل نسيت كلمة المرور ؟',textAlign: TextAlign.end,style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white,
                        ),),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0x97000004),

                        ),
                        child: MaterialButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => Driver_bar(),));

                        },

                          child: Text('تسجيل الدخول',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'لا تمتلك حساب ؟',style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                        TextButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Sing_Up(),));
                          },
                          child: Text(
                            '  إنشاء حساب جديد',style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'رجوع للخلف',style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}