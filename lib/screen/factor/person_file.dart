import 'package:flutter/material.dart';

class Person_File extends StatefulWidget {
  const Person_File({super.key});

  @override
  State<Person_File> createState() => _Person_FileState();
}

class _Person_FileState extends State<Person_File> {

  bool readOnly = true;

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
                'الاسم',style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18
              ),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        readOnly =false;
                      });
                    },
                    icon: Icon(Icons.edit,color: Color(0xff186987),size: 30),
                  )
                ),
                initialValue:'Khaled Ramzy' ,
                readOnly: readOnly,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff186987)
                ),

              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'رقم الهاتف ',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18
              ),),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          readOnly =false;
                        });
                      },
                      icon: Icon(Icons.edit,color: Color(0xff186987),size: 30),
                    )
                ),
                initialValue:'01102507463 ' ,
                keyboardType: TextInputType.number,
                readOnly: readOnly,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff186987)
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
