import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/addrequest.dart';
import 'package:trilla1/screen/factor/category.dart';
import 'package:trilla1/screen/factor/notification.dart';
import 'package:trilla1/screen/factor/settings.dart';

import 'person.dart';


class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff186987),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('الطلبات',style: TextStyle(
            color:Color(0xff186987),fontWeight: FontWeight.w700,fontSize: 20
        ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Notification_Screen(),));
          },
          icon: Icon(
            Icons.notifications_outlined,
            color:Color(0xff186987),
            size: 30,),
        ),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
               alignment: Alignment.bottomLeft,
                width: double.infinity,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,size: 30,color: Colors.black,),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'عميل',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                      ),
                      Text(
                        ':  الاسم   ',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff186987)
                      ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0x8d8f9397),
                    child: Icon(
                      Icons.person,size: 60,
                      color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Image.asset(
                  'assets/images/drawer.png'
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                ' 0 ',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff186987)
              ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                ' إجمالي الطلبات ',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff186987)
              ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.45,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff186987),
                  border: Border.all(),
                ),
                child: MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Person_Screen(),));
                    },
                    child: Text(
                      'الملف الشخصي ',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white
                    ),
                    )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.45,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff186987),
                  border: Border.all(),
                ),
                child: MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Category_Screen(),));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'القسائم ',style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(
                          width: 20,),
                        Image.asset(
                            'assets/images/drawer2.png'
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.20,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.55,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Settings_Screen(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الاعدادات ',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(
                        width: 20,),
                      Icon(
                        Icons.settings,size: 40,
                        color: Color(0xff186987),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child :const Text.rich(
              textDirection: TextDirection.rtl,
              TextSpan(
                text: 'شُحنتي',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "، نحن ندرك أن السفر لمسافات طويله مرهق",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "   \n\n        نحن هٌنا لخدمتك ..",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )
                ]
              )
            )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.13,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width*.80,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  textDirection: TextDirection.rtl,
                  TextSpan(
                    text: "أهلا ,",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan(
                        text: " \n\nهل تحتاج لشحن البضائع ؟    "
                      )
                    ]
                  ),

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*.35,
                  decoration:const BoxDecoration(
                      color: Color(0xff186987),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AddRequest(),));
                    },
                    child: Text(
                      'طلب شحنه الآن',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
