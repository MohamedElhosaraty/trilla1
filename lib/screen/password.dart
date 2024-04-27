import 'package:flutter/material.dart';
import 'package:trilla1/screen/password2.dart';

class Password_Screen extends StatelessWidget {
  const Password_Screen({super.key});

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
                height: MediaQuery.of(context).size.height * .6,
                decoration: BoxDecoration(
                    color: Color(0xff186987),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'رقم الهاتف',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff999797),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0x97000004),

                        ),
                        child: MaterialButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => Password2_Screen(),));

                        },

                          child: Text(' إسترجاع كلمة المرور',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .25,
                    ),
                    TextButton(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
