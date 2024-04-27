import 'package:flutter/material.dart';

class More2_Screen extends StatefulWidget {
  const More2_Screen({super.key});

  @override
  State<More2_Screen> createState() => _More2_ScreenState();
}

class _More2_ScreenState extends State<More2_Screen> {
  
  String? car ;
  
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
              Text('السيارات',style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff186987),
                  fontWeight:FontWeight.w600
              ),),
              SizedBox(
                height: 40,
              ),
              Card(
                margin: EdgeInsets.only(top: 10),
                color: Color(0xffF2F2F2),
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                    title: Text('ربع نقل',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "نقل", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),
                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' چامبو',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "چامبو", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' نقل كبير',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: " نقل كبير", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' سوزوكي',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "سوزوكي", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' مقطوره كبيره',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "مقطوره كبيره", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' قلاب',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "قلاب", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(' جرار',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "جرار", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
              ),
              Card(
                margin: EdgeInsets.only(top: 10),

                color: Color(0xffF2F2F2),
                child: RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text('مازدا ',style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1B),
                        fontWeight:FontWeight.w400
                    ),),
                    value: "مازدا", groupValue: car, onChanged: (val){
                  setState(() {
                    car = val! ;
                  });
                }),
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
