
import 'package:flutter/material.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {


  List text =[
    {
      'title' : 'تم قبول طلبك بنجاح',
      'subtitle' : 'قم بتفقد الطلبات الآن'
    },
    {
      'title' : 'تم قبول طلبك بنجاح',
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
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,size: 30,color: Colors.black,),
        ),
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
