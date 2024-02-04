import 'package:flutter/material.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title:const Text(
          'الإعدادات',style: TextStyle(
          fontWeight: FontWeight.w700,fontSize: 18,
          color: Color(0xff186987),
        ),),
        centerTitle: true,
        actions: [
          Icon(
            Icons.arrow_forward,color: Colors.black,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
          child: Column(
            children: [
              Container(
            width: double.infinity,
            height: size.height*.10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              border: Border.all(  color: Color(0xff999797)),
            ),
            child: MaterialButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اعدادات الملف الشخصي',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 25,
                    color: Colors.black
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Icon(
                      Icons.settings,color: Color(0xff186987),size: 70,),
                  ),
                ],
              )
            ),
          ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height*.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(  color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تعديل كلمة المرور',style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 25,
                            color: Colors.black
                        ),),
                       Padding(
                         padding: const EdgeInsets.only(left: 30.0),
                         child: Image.asset('assets/images/setting2.png'),
                       )
                      ],
                    )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height*.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(  color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الدعم الفني',style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 25,
                            color: Colors.black
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Image.asset(
                              'assets/images/setting3.png'),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height*.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(  color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تسجيل الخروج',style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 25,
                            color: Colors.black
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            Icons.exit_to_app,color: Color(0xff186987),size: 70,),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(
                height: size.height*.25,
              ),
              Container(
                width: double.infinity,
                height: size.height*.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(  color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'حذف الحساب',style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 25,
                            color: Colors.black
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            Icons.delete,color: Colors.red,size: 70,),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
