import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/orders_model.dart';

class Waiting_Screen extends StatelessWidget {
  final OrdersDataList model;
  const Waiting_Screen({super.key, required this.model});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/clock.png',
                  scale: 1.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    model.status,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff999797)),
                  ),
                ),
              ],
            ),
            Divider(thickness: 1, color: Color(0xff999797)),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                '# ${model.id}',
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
                          model.deliveryCity,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        ),
                        Text(
                          model.price,
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
                          model.weight,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff999797)),
                        ),
                        Text(
                          'وزن الشحنة',
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
                  Container(
                    width: MediaQuery.of(context).size.width * .60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff999797)),
                    ),
                    child: MaterialButton(
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.question,
                            animType: AnimType.bottomSlide,
                            title: 'هل تريد حذف الحساب ؟',
                            titleTextStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black),
                            desc:
                                'سيتم حذف الطلب نهائيًا ولن تتمكن من الوصول إليه مجددًا',
                            descTextStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff999797)),
                            btnCancel: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'إلغاء',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            btnOk: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'تأكيد',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffBB1515)),
                              ),
                            ),
                          ).show();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ' حذف الطلب',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                          ],
                        )),
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
