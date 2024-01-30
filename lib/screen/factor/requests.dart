import 'package:flutter/material.dart';

class Requests_Screen extends StatefulWidget {
  const Requests_Screen({super.key});

  @override
  State<Requests_Screen> createState() => _Requests_ScreenState();
}

class _Requests_ScreenState extends State<Requests_Screen> with SingleTickerProviderStateMixin {
  late TabController myController;
  int value =0;

  @override
  void initState() {
    myController = new TabController(
        length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('الطلبات',style: TextStyle(
            color:Color(0xff186987),fontWeight: FontWeight.w700,fontSize: 20
        ),),
        centerTitle: true,
        leading: Icon(
          Icons.notifications_outlined,
          color:Color(0xff186987),
          size: 30,),
        actions: [
          Icon(
            Icons.menu,color:Color(0xff186987),)
        ],
        bottom: TabBar(
          onTap: (index){
            setState(() {
              value = index ;
            });
          },
          indicatorWeight: 0,
          controller: myController,
          isScrollable: true,
          indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
            color: Color(0xff186987) ,
            border: Border.all(color: Color(0xff186987) )
          ),
          tabs: [
            value == 0 ?
            Tab(
              child: Text('مرفوضة',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),) :
            Tab(
            child: Container(
              width: 95,
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all( color: Color(0xff186987))
              ),
              child: Text('مرفوضة',style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.w600,
                color: Color(0xff186987)
              ),),
            ),),
            value == 1 ?
            Tab(
              child: Text('تمت',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),) :
            Tab(
              child: Container(
                width: 95,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all( color: Color(0xff186987))
                ),
                child: Text('تمت',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w600,
                    color: Color(0xff186987)
                ),),
              ),),
            value == 2 ?
            Tab(
              child: Text('جاري التنفيذ',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),) :
            Tab(
              child: Container(
                width: 95,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all( color: Color(0xff186987))
                ),
                child: Text('جاري التنفيذ',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w600,
                    color: Color(0xff186987)
                ),),
              ),),
            value == 3 ?
            Tab(
              child: Text('قيد الانتظار',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),) :
            Tab(
              child: Container(
                width: 95,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all( color: Color(0xff186987))
                ),
                child: Text('قيد الانتظار',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w600,
                    color: Color(0xff186987)
                ),),
              ),),

        ],),
      ),
      body: TabBarView(
        controller: myController,
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context ,index){
              return  Padding(
                padding: EdgeInsetsDirectional.all(10),
                child: Container(
                  width: 380,
                  height: 120,
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('نوع الشحنه',style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 18,
                            color: Colors.black
                          ),),
                          Text('التاريخ',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff999797)
                          ),),
                          Text('وقت الرفض',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffBB1515)
                          ),)
                        ],
                      ),
                      Icon(
                        Icons.cancel,size: 80,color: Color(0xff186987),),
                    ],
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context ,index){
              return  Padding(
                padding: EdgeInsetsDirectional.all(10),
                child: Container(
                  width: 380,
                  height: 120,
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('نوع الشحنه',style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 18,
                              color: Colors.black
                          ),),
                          Text('التاريخ',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff999797)
                          ),),
                          Text('وقت التسليم',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff15BB1B)
                          ),)
                        ],
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Color(0xff186987),
                        child: Icon(
                          Icons.check,size: 80,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context ,index){
              return  Padding(
                padding: EdgeInsetsDirectional.all(10),
                child: Container(
                  width: 380,
                  height: 120,
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('نوع الشحنه',style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 18,
                              color: Colors.black
                          ),),
                          Text('التاريخ',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff999797)
                          ),),
                          Text('وقت التحميل',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff999797)
                          ),),
                        ],
                      ),
                     Image.asset(
                         'assets/images/clockcheck.png',scale: .90,)
                    ],
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context ,index){
              return  Padding(
                padding: EdgeInsetsDirectional.all(10),
                child: Container(
                  width: 380,
                  height: 120,
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('نوع الشحنه',style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 18,
                              color: Colors.black
                          ),),
                          Text('التاريخ',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff999797)
                          ),),
                          Text('الوقت',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff999797)
                          ),),
                        ],
                      ),
                      Image.asset(
                        'assets/images/clock.png',scale: .80,)
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),

    );
  }
}
