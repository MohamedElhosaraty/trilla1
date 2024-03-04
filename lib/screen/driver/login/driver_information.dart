import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/login/driver_information2.dart';

class Driver_Information extends StatelessWidget {
  const Driver_Information({super.key});

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
                width: MediaQuery.of(context).size.width*.77,
                height: MediaQuery.of(context).size.height-350,
                decoration: BoxDecoration(
                    color: Color(0xff186987),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      ' معلومات السيارة',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.calendar_today_outlined,size: 40,),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: ' رقم اللوحة',
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
                      height: 18,
                    ),
                    Container(
                      width: 280,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          suffixIcon:Icon(Icons.train_outlined,size: 40,) ,
                          fillColor: Colors.white,
                          labelText: ' نوع سيارتك',
                          labelStyle: const TextStyle(
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
                      height: 18,
                    ),
                    Container(
                      width: 280,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          suffixIcon:Icon(Icons.car_rental,size: 40,) ,
                          fillColor: Colors.white,
                          labelText: '  الكماليات',
                          labelStyle: const TextStyle(
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
                      height: 45,
                    ),
                    Container(
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color(0x97000004),

                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Driver_Information2(),));

                      },

                        child: Text(' متابعة',style: TextStyle(
                            fontWeight: FontWeight.w700,fontSize: 15,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        'رجوع للخلف',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
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
