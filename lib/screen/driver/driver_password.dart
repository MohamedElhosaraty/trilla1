import 'package:flutter/material.dart';

class Driver_Password extends StatelessWidget {
  const Driver_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title:const Text(
            'إعدادات الملف الشخصي',style: TextStyle(
            fontWeight: FontWeight.w700,fontSize: 18,
            color: Color(0xff186987),
          ),),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,color: Colors.black,),

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'كلمة المرور الحاليه',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18
              ),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'كلمة المرور الجديدة',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18
              ),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'تأكيد كلمة المرور الجديدة ',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18
              ),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*.50,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff186987),
                    border: Border.all(),
                  ),
                  child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                        'حفظ التغييرات',style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white
                      ),
                      )
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
