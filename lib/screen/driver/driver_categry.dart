import 'package:flutter/material.dart';

class Driver_Categry extends StatelessWidget {
  const Driver_Categry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title:const Text(
            'القسائم',style: TextStyle(
            fontWeight: FontWeight.w700,fontSize: 18,
            color: Color(0xff186987),
          ),),
          centerTitle: true,
          actions: [
            Image.asset(
                'assets/images/image2.png'),
          ],
          leading: Icon(
            Icons.close,size: 30,color: Colors.black,),
        ),
        body: SizedBox(
          height: double.infinity,
          child: ListView.builder(
              itemCount: 2,
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
                            Text(
                              'القسيمة ( الخصم )',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w600,
                                color: Color(0xff186987)
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'قيمة الخصم#',style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w600,
                                color: Color(0xff999797)
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'تاريخ انتهاء الخصم',style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff999797)
                                ),),
                                Spacer(),
                                Text(
                                  'كود القسيمه#',style: TextStyle(
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
