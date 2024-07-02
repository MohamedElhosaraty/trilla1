import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:trilla1/screen/factor/category.dart';
import 'package:trilla1/screen/factor/notification.dart';
import 'package:trilla1/screen/factor/person.dart';
import 'package:trilla1/screen/factor/settings.dart';

import '../../cubit/factor/orders_list/orders_list_cubit.dart';

class History_Screen extends StatefulWidget {
  const History_Screen({super.key});

  @override
  State<History_Screen> createState() => _History_ScreenState();
}

class _History_ScreenState extends State<History_Screen> {
  @override
  void initState() {
    context.read<OrdersListCubit>().getOrderList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Notification_Screen(),
                ));
          },
          icon: Icon(
            Icons.notifications_outlined,
            color: Color(0xff186987),
            size: 30,
          ),
        ),
        foregroundColor: Color(0xff186987),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'السجل',
          style: TextStyle(
              color: Color(0xff186987),
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<OrdersListCubit, OrdersListState>(
        builder: (context, state) {
          return state is OrdersListLoadingState
              ? Center(child: CircularProgressIndicator.adaptive())
              : SizedBox(
                  height: double.infinity,
                  child: ListView.builder(
                      itemCount: context
                          .read<OrdersListCubit>()
                          .ordersList!
                          .data
                          .length,
                      itemBuilder: (context, index) {
                        var item = context
                            .read<OrdersListCubit>()
                            .ordersList!
                            .data[index];
                        return Padding(
                          padding: EdgeInsetsDirectional.all(17),
                          child: Stack(
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xff186987),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 50,
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${item.price} ج.م',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff186987)),
                                        ),
                                        Spacer(),
                                        Text(
                                          "# ${item.id}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff999797)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      DateFormat(
                                        'EEE, dd MMM',
                                      ).format(item.date).toString(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff186987)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          item.status,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff999797)),
                                        ),
                                        Spacer(),
                                        Text(
                                          item.time,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff999797)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                );
        },
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.black,
                  ),
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
                        'عميل',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Person_Screen(),
                          ));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Category_Screen(),
                          ));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings_Screen(),
                        ));
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
