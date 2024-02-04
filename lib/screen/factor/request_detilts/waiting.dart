import 'package:flutter/material.dart';

class Waiting_Screen extends StatelessWidget {
  const Waiting_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title:const Text(
          'تفاصيل الطلب',style: TextStyle(
          fontWeight: FontWeight.w700,fontSize: 18,
          color: Color(0xff186987),
        ),),
        centerTitle: true,
        actions:[
          Icon(
          Icons.arrow_forward,color: Colors.black,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/clock.png',scale: 1.2,),
                 Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'قيد الانتظار',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w600,
                      color: Color(0xff999797)
                  ),),
                ),
              ],
            ),
            Divider(
              thickness: 1,
                color: Color(0xff999797)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                'رقم الطلب#',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.black
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'المسافة ',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),),
                        Text(
                          ' السعر',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'نوع الشحنة',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),),
                        Text(
                          'وزن الشحنة',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30),
                    width: double.infinity,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ' تاريخ التحميل',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff999797)
                    ),),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'مكان التحميل ',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),),
                        Text(
                          'مكان التوصيل ',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff999797)
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30),
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '  ملاحظات',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff999797)
                    ),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.60,
                    height: 60,
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
                              ' حذف الطلب',style: TextStyle(
                                fontWeight: FontWeight.w600,fontSize: 18,
                                color: Colors.black
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Icon(
                                Icons.delete,color: Colors.red,size: 40,),
                            ),
                          ],
                        )
                    ),
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