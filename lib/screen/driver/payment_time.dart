import 'package:flutter/material.dart';

class Payment_Time extends StatelessWidget {
  const Payment_Time({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('المحفظة',style: TextStyle(
              color:Color(0xff186987),fontWeight: FontWeight.w700,fontSize: 20
          ),),
          centerTitle: true,
          // leading: Icon(
          //   Icons.notifications_outlined,
          //   color:Color(0xff186987),
          //   size: 30,),
          // actions: [
          //   Icon(
          //     Icons.menu,color:Color(0xff186987),)
          // ],
        ),
        body: SizedBox(
          height: double.infinity,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context,index){
                return  Padding(
                  padding: EdgeInsetsDirectional.all( 17),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xff186987),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),

                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-50,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Text(
                                  'السعر ج.م',style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff186987)
                                ),),
                                Spacer(),
                                Text(
                                  '#رقم الطلب',style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff999797)),),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'التاريخ',style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff186987)
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  ' طريقة الدفع',style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff999797)
                                ),),
                                Spacer(),
                                Text(
                                  'وقت تسليم الشحنه#',style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff999797)),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }
          ),
        )

    );
  }
}