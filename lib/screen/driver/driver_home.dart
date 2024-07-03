import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trilla1/screen/driver/driver_notification.dart';

class Driver_Home extends StatelessWidget {
  const Driver_Home({super.key});

  @override
  Widget build(BuildContext context) {
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
              fontSize: 20.sp),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Driver_Notification(),
                ));
          },
          icon: Icon(
            Icons.notifications_outlined,
            color: Color(0xff186987),
            size: 30.h,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
                height: (MediaQuery.of(context).size.height / 4).h,
                color: Colors.blue.shade200,
                alignment: Alignment.center,
                child: Text.rich(
                    textDirection: TextDirection.rtl,
                    TextSpan(
                        text: '  شُحنتي  \n ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "تتمنى لك يوم عمل \n ",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "   سعيد وامان",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ]))),
            Stack(
              children: [
                Image.asset("assets/images/car2.jpg"),
                Container(
                  margin: EdgeInsets.only(top: 50.h, left: 50.w, right: 50.w),
                  height: 200.h,
                  width: (MediaQuery.of(context).size.width * .80).w,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(
                        textDirection: TextDirection.rtl,
                        TextSpan(
                            text: "أهلا , \n ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                            children: [TextSpan(text: " ليس لديك طلب  ")]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.blue.shade200,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
