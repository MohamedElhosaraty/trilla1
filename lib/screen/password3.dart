import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/driver_bar.dart';

class Password3_Screen extends StatelessWidget {
  const Password3_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Center(child: Image.asset('assets/images/image.png')),
              SizedBox(
                height: 90,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .77,
                decoration: BoxDecoration(
                    color: Color(0xff186987),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          ' إستعادة كلمة المرور',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        'كلمة السر الجديدة',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white
                      ),
                      ),
                      TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        '  تأكيد كلمة السر الجديدة',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      ),
                      TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0x97000004),

                        ),
                        child: MaterialButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => Driver_bar(),));

                        },

                          child: Text('   تغيير كلمة المرور',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'رجوع للخلف',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
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

