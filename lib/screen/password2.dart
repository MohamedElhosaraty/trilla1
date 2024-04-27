import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trilla1/screen/password3.dart';

class Password2_Screen extends StatefulWidget {
  const Password2_Screen({super.key});

  @override
  State<Password2_Screen> createState() => _Password2_ScreenState();
}

class _Password2_ScreenState extends State<Password2_Screen> {

  bool correct = true ;
  TextEditingController c1 =TextEditingController();
  TextEditingController c2 =TextEditingController();
  TextEditingController c3 =TextEditingController();
  TextEditingController c4 =TextEditingController();
  TextEditingController c5 =TextEditingController();
  TextEditingController c6 =TextEditingController();

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
              Center(
                  child: Image.asset('assets/images/image.png')),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        """تم ارسال رمز التأكيد لرقم الهاتف 
+021********* برجاء إدخال الكود المكون
                           من 6 أرقام     
"""                  ,style: TextStyle(
                        fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600
                      ),),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFieldOTP(controller: c1, first:  true, last: false,correct: correct,),
                        TextFieldOTP(controller: c2, first:  false, last: false,correct: correct,),
                        TextFieldOTP(controller: c3, first:  false, last: false,correct: correct,),
                        TextFieldOTP(controller: c4, first:  false, last: false,correct: correct,),
                        TextFieldOTP(controller: c5, first:  false, last: false,correct: correct,),
                        TextFieldOTP(controller: c6, first:  false, last: true,correct: correct,),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "لم تصلك رسالة التأكيد ؟"
                 ,style: TextStyle(
                          fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "إعادة الارسال خلال 60ث"
                        ,style: TextStyle(
                          fontSize: 14,color: Color(0xff2A3342),fontWeight: FontWeight.w400
                      ),),
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
                            builder: (context) => Password3_Screen(),));

                        },

                          child: Text('المتابعه ',style: TextStyle(
                              fontWeight: FontWeight.w700,fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 24,
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

class TextFieldOTP extends StatelessWidget {
  bool first,last,correct;
  TextEditingController? controller;

  TextFieldOTP({super.key,
    required this.first,required this.last,required this.controller,required this.correct});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width/10,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: correct ? Colors.blueGrey : Colors.red,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 234, 234, 234),
      ),
      child: TextFormField(
        onChanged: (value){
          if(value.isNotEmpty && last == false){
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.width /6,
            maxWidth: MediaQuery.of(context).size.width /7,
          ),
        ),

      ),
    );


  }

}
