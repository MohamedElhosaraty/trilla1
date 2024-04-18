import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/driver_categry.dart';
import 'package:trilla1/screen/driver/driver_file.dart';
import 'package:trilla1/screen/driver/driver_notification.dart';
import 'package:trilla1/screen/driver/driver_person.dart';
import 'package:trilla1/screen/driver/driver_setting.dart';

class Driver_Request extends StatefulWidget {
  const Driver_Request({super.key});

  @override
  State<Driver_Request> createState() => _Requests_ScreenState();
}

class _Requests_ScreenState extends State<Driver_Request>
    with SingleTickerProviderStateMixin {
  late TabController myController;
  int value = 0;

  @override
  void initState() {
    myController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff186987),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'الطلبات',
          style: TextStyle(
              color: Color(0xff186987),
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Driver_Notification(),));
          },
          icon: Icon(
            Icons.notifications_outlined,
            color: Color(0xff186987),
            size: 30,
          ),
        ),
        bottom: TabBar(
          onTap: (index) {
            setState(() {
              value = index;
            });
          },
          indicatorWeight: 0,
          controller: myController,
          isScrollable: true,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff186987),
              border: Border.all(color: Color(0xff186987))),
          tabs: [
            value == 0
                ? Tab(
                    child: Text(
                      'المنتهية',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                : Tab(
                    child: Container(
                      width: 95,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xff186987))),
                      child: Text(
                        'المنتهية',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff186987)),
                      ),
                    ),
                  ),
            value == 1
                ? Tab(
                    child: Text(
                      'الحالية',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                : Tab(
                    child: Container(
                      width: 95,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xff186987))),
                      child: Text(
                        'الحالية',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff186987)),
                      ),
                    ),
                  ),
            value == 2
                ? Tab(
                    child: Text(
                      'قيد الانتظار',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                : Tab(
                    child: Container(
                      width: 95,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xff186987))),
                      child: Text(
                        'قيد الانتظار',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff186987)),
                      ),
                    ),
                  ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myController,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/box.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                'لا توجد شحنات',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
              )
              // Container(
              //   height: 30,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Color(0xff186987),
              //     borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20)),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 20.0,top: 5),
              //     child: Text(
              //       '16#',style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.w400,
              //       fontSize: 16,
              //     ),
              //       textAlign: TextAlign.end,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(bottom: 30),
              //   width: size.width-100,
              //   height: 100,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffD9D9D9)),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset('assets/images/box.png')
              //     ],
              //   )
              // ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(bottom: 30),
              //   width: size.width-100,
              //   height: 100,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffD9D9D9)),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Text(
              //         'نوع الشحنة',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //             fontSize: 18,
              //             color: Color(0xff999797)),
              //       ),
              //       Text(
              //         'وزن الشحنة',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //             fontSize: 18,
              //             color: Color(0xff999797)),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(bottom: 30),
              //   width: size.width-100,
              //   height: 100,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffD9D9D9)),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Text(
              //     ' تاريخ التحميل',
              //     style: TextStyle(
              //         fontWeight: FontWeight.w600,
              //         fontSize: 18,
              //         color: Color(0xff999797)),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(bottom: 30),
              //   width: size.width-100,
              //   height: 100,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffD9D9D9)),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Text(
              //         'مكان التحميل ',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //             fontSize: 18,
              //             color: Color(0xff999797)),
              //       ),
              //       Text(
              //         'مكان التوصيل ',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //             fontSize: 18,
              //             color: Color(0xff999797)),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(bottom: 30),
              //   width: size.width-100,
              //   height: 80,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffD9D9D9)),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Text(
              //     '  ملاحظات',
              //     style: TextStyle(
              //         fontWeight: FontWeight.w600,
              //         fontSize: 18,
              //         color: Color(0xff999797)),
              //   ),
              // ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xff186987))),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff186987),
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0,top: 5),
                        child: Text(
                          '16#',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Column(
                              children: [
                                Text(
                                  'وزن الشحن',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.black
                                ),
                                ),
                                Text(
                                  ' 250 كجم',style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0xff999797)
                                ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  ' نوع الشحنة',style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                                ),
                                Text(
                                  'طماطم',style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0xff999797)
                                ),
                                ),
                              ],
                            ),
                          ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    ' مكان التوصيل',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    'الشرقية',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '  مكان التحميل',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    'المنصورة',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                            ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ' تاريخ التحميل',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff999797)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '8:30 ص',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                              ),
                              Text(
                                '2024/01/24',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    ' المسافة ',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    '54 كم',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '   الأجر',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    '1800 ج.م',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                            ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  ملاحظات',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff999797)),
                          ),
                          Text(
                            '  يتم الدفع عن طريق فودافون كاش',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '  بيانات العميل',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff999797)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/phone.png'),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      '   محمد الحصراتى',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xff999797)),
                                    ),
                                    Text(
                                      '   01102507463',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xff999797)),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/image2.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xff186987))),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff186987),
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0,top: 5),
                        child: Text(
                          '16#',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'وزن الشحن',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                  Text(
                                    ' 250 كجم',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    ' نوع الشحنة',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                  Text(
                                    'طماطم',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                ],
                              ),
                            ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    ' مكان التوصيل',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    'الشرقية',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '  مكان التحميل',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    'المنصورة',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                            ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ' تاريخ التحميل',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff999797)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '8:30 ص',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                              ),
                              Text(
                                '2024/01/24',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    ' المسافة ',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    '54 كم',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '   الأجر',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff999797)
                                  ),
                                  ),
                                  Text(
                                    '1800 ج.م',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                  ),
                                ],
                              ),
                            ],),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 30),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  ملاحظات',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff999797)),
                          ),
                          Text(
                            '  يتم الدفع عن طريق فودافون كاش',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 20),
                      width: size.width-100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '  بيانات العميل',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff999797)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/phone.png'),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      '   محمد الحصراتى',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xff999797)),
                                    ),
                                    Text(
                                      '   01102507463',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xff999797)),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/image2.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(  color: Color(0xff999797)),
                            ),
                            child: MaterialButton(
                                onPressed: (){
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.QUESTION,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'هل تريد رفض الطلب ؟',
                                    titleTextStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.black
                                    ),
                                    desc: 'سيتم حذف الطلب نهائيًا ولن تتمكن من الوصول إليه مجددًا',
                                    descTextStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xff999797)
                                    ),
                                    btnCancel: TextButton(
                                      onPressed : (){},
                                      child: const Text(
                                        'إلغاء',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                      ),),
                                    ),
                                    btnOk: TextButton(
                                      onPressed:    (){},
                                      child: const Text(
                                        'تأكيد',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffBB1515)
                                      ),
                                      ),
                                    ),
                                  ).show();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ' رفض الطلب  ',style: TextStyle(
                                        fontWeight: FontWeight.w600,fontSize: 18,
                                        color: Colors.black
                                    ),),
                                  ],
                                )
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff186987),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(  color: Color(0xff999797)),
                            ),
                            child: MaterialButton(
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '  قبول الطلب',style: TextStyle(
                                        fontWeight: FontWeight.w600,fontSize: 18,
                                        color: Colors.black
                                    ),),
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
            ),
          ),

        ],
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.close,
                size: 30,
                color: Colors.black,
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
                        'سائق',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        ':  الاسم   ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff186987)),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0x8d8f9397),
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/star.png'),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        ' 0.00 ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff186987)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        ' التقييم  ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff186987)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/drawer.png'),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        ' 0 ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff186987)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        ' إجمالي الطلبات ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff186987)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff186987),
                  border: Border.all(),
                ),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Driver_File(),));
                    },
                    child: Text(
                      'الملف الشخصي ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff186987),
                  border: Border.all(),
                ),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Driver_Categry(),));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'القسائم ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/images/drawer2.png'),
                      ],
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .55,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Driver_Settting(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الاعدادات ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.settings,
                        size: 40,
                        color: Color(0xff186987),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
