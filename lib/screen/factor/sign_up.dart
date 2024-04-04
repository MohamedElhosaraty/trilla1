import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/bottombar.dart';
import 'package:trilla1/screen/factor/login.dart';

class Sing1_Up extends StatelessWidget {
  const Sing1_Up({super.key});

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
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width*.77,
              height: MediaQuery.of(context).size.height-250,
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
                    'إنشاء حساب جديد',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'الاسم بالكامل',
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
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'رقم الهاتف',
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
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'كلمة المرور',
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
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'تأكيد كلمة المرور',
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed :(){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Login1_Screen(),));
                        },
                        child: Text(
                          ' تسجيل الدخول',style: TextStyle(
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