import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trilla1/screen/factor/login.dart';

import '../cache/cache_helper.dart';
import '../core/api/end_Points.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(child: Image.asset('assets/images/image.png')),
            SizedBox(
              height: 61.h,
            ),
            Text(
              'مرحباً بك',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 90.h,
            ),
            Text(
              'المتابعه كـ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 44.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        CacheHelper().saveData(key: ApiKey.type, value: "user");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login1_Screen(),
                            ));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff186987),
                        radius: 45.r,
                        child: Icon(
                          Icons.person,
                          size: 70.h,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'عميل',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        CacheHelper()
                            .saveData(key: ApiKey.type, value: "driver");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login1_Screen(),
                            ));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff186987),
                        radius: 45,
                        child: Image.asset('assets/images/car.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'سائق',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
