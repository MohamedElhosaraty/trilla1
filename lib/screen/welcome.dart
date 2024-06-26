import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/login/login.dart';
import 'package:trilla1/screen/factor/login.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 103,
            ),
            Center(
                child: Image.asset('assets/images/image.png')),
            SizedBox(
              height: 61,
            ),
            Text(
              'مرحباً بك',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
            SizedBox(
              height: 90,
            ),
            Text(
              'المتابعه كـ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
              textAlign: TextAlign.end,),
            SizedBox(
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login1_Screen(),));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff186987),
                        radius: 45,
                        child: Icon(Icons.person,size: 70,color: Colors.white,),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'عميل',style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 25
                    ),)
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context) => Login_Screen(), ));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff186987),
                        radius: 45,
                        child: Image.asset('assets/images/car.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     Text(
                      'سائق',style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 25
                    ),)
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}