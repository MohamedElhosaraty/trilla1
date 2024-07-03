import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/orders_model.dart';

class Accept_Screen extends StatelessWidget {
  final OrdersDataList model;
  const Accept_Screen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'تفاصيل الطلب',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xff186987),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff186987),
                    child: Icon(
                      Icons.check,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      ' تمت ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff15BB1B)),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, color: Color(0xff999797)),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                'رقم الطلب#',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black),
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
                          "${model.price} ج.م",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        ),
                        Text(
                          ' السعر',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        )
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
                          model.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        ),
                        Text(
                          model.weight,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        )
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
                      DateFormat(
                        'EEE, dd MMM',
                      ).format(model.date).toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff999797)),
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
                          model.loadStreet,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        ),
                        Text(
                          model.deliveryStreet,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        )
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
                      model.note,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff999797)),
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
