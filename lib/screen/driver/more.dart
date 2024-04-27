import 'package:flutter/material.dart';

class More_Screen extends StatefulWidget {
  const More_Screen({super.key});

  @override
  State<More_Screen> createState() => _More_ScreenState();
}

class _More_ScreenState extends State<More_Screen> {

  bool more1 = false ;
  bool more2 = false ;
  bool more3 = false ;
  bool more4 = false ;
  bool more5 = false ;
  bool more6 = false ;
  bool more7 = false ;
  bool more8 = false ;
  bool more9 = false ;
  bool more10 = false ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text('الكماليات',style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff186987),
                  fontWeight:FontWeight.w600
              ),),
              SizedBox(
                height: 40,
              ),
              CheckboxListTile(
                title: Text('بوم',style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff1B1B1B),
                  fontWeight:FontWeight.w400
                ),),
                  value: more1, onChanged: (val){
                    setState(() {
                      more1 = val! ;
                    });
              }
              ),
              CheckboxListTile(
                  title: Text('كساتن',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more2, onChanged: (val){
                setState(() {
                  more2 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('شرايط',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more3, onChanged: (val){
                setState(() {
                  more3 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('جنازير',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more4, onChanged: (val){
                setState(() {
                  more4 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('مشمع',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more5, onChanged: (val){
                setState(() {
                  more5 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('زوى',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more6, onChanged: (val){
                setState(() {
                  more6 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('سلب',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more7, onChanged: (val){
                setState(() {
                  more7 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('سيلات',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more8, onChanged: (val){
                setState(() {
                  more8 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('كاميرا',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more9, onChanged: (val){
                setState(() {
                  more9 = val! ;
                });
              }
              ),
              CheckboxListTile(
                  title: Text('انذار رجوع للخلف',style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1B1B1B),
                      fontWeight:FontWeight.w400
                  ),),
                  value: more10, onChanged: (val){
                setState(() {
                  more10 = val! ;
                });
              }
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('تأكيد',style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff186987),
                        fontWeight:FontWeight.w600
                    ),),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('إلغاء',style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffBB1515),
                        fontWeight:FontWeight.w600
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
