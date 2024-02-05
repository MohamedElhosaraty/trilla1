import 'package:flutter/material.dart';

class Driver_Notification extends StatefulWidget {
  const Driver_Notification({super.key});

  @override
  State<Driver_Notification> createState() => _Driver_NotificationState();
}

class _Driver_NotificationState extends State<Driver_Notification> {

  List text =[
    {
      'title' : 'لديك طلب جديد بالقرب منك',
      'subtitle' : 'قم بتفقد الطلبات الآن'
    },
    {
      'title' : 'قام أحد العملاء بتقييمك',
      'subtitle' : 'قم بتفقد الطلبات الآن'
    },
    {
      'title' : 'قام أحد العملاء بتقييمك',
      'subtitle' : 'قم بتفقد الطلبات الآن'
    },
  ];

  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title:const Text(
          'الإشعارات',style: TextStyle(
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
        height: 500,
        child: ListView.builder(
            itemCount: text.length,
            itemBuilder: (context ,index){
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Color(0xffF5F5F5),

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          text[index]['title'],style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff186987)
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text[index]['subtitle'],style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff999797)
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
