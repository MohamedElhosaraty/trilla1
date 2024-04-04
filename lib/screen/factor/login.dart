import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/login/sign_up.dart';
import 'package:trilla1/screen/factor/bottombar.dart';
import 'package:trilla1/screen/factor/sign_up.dart';

class Login1_Screen extends StatelessWidget {
  const Login1_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: MediaQuery.of(context).size.height*.80,
              decoration: BoxDecoration(
                  color: Color(0xff186987),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
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
                  Text(
                    'هل نسيت كلمة المرور ؟',textAlign: TextAlign.end,style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white,
                  ),),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0x97000004),

                    ),
                    child: MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Bottom_Navigation(),));

                    },

                      child: Text('تسجيل الدخول',style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Sing1_Up(),));
                        },
                        child: Text(
                          '  إنشاء حساب جديد',style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                      ),
                      Text(
                        'لا تمتلك حساب ؟',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),

                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'رجوع للخلف',style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}