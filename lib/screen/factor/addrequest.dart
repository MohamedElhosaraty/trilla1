import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/requests.dart';

class AddRequest extends StatefulWidget {
  const AddRequest({super.key});

  @override
  State<AddRequest> createState() => _AddRequestState();
}

class _AddRequestState extends State<AddRequest> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(' إضافة طلب',style: TextStyle(
              color:Colors.black,fontWeight: FontWeight.w700,fontSize: 20
          ),),
          centerTitle: true,
          leading:
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,color:Colors.black,),
            ),
        ),
        body: Stepper(

          onStepTapped: (step){
            setState(() {
              currentStep =step;
            });
          },
          type: StepperType.horizontal,
            currentStep: currentStep,
            onStepContinue: (){
            final isLastStep = currentStep == getSteps().length-1;
            if(isLastStep){
               // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
               //   Requests_Screen(),));
            }else{
              setState(() {
                currentStep +=1;
              });
            }
            },
            onStepCancel: (){
             currentStep == 0 ? null : () => setState(() {
               currentStep -=1;
             });
            },
            controlsBuilder: (context , details){
              final isLastStep = currentStep == getSteps().length-1;
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff186987),
                borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(
                onPressed: details.onStepContinue,
                child: Text (isLastStep ? 'تأكيد الطلب' :'التالي',style: TextStyle(
                  fontSize: 20,color: Colors.white
                ),),
              ),
            );
            },
            steps: getSteps()),
      ),
    );
  }
  List<Step> getSteps () => [
    Step(
      label: Text('معلومات الشحنه'),
        state: currentStep >0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >=0,
        title: Text(''),
        content:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),              child: textForm(
                  text: 'نوع الشحنه',),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: 'وزن الشحنه',
               preIcon: Image.asset('assets/images/weight.png',
                 ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' نوع العربيه'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: '  رقم الهاتف'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' تاريخ تحميل الشحنه',
              preIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.calendar_month,size: 40),
                  ),
              )),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' كود قسيمة الخصم ( إن وجد )'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' ملاحظات',
              line: 4),
            ),
          ],
        ) ),
    Step(
      label: Text(' الموقع'),
        state: currentStep >1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >=1,
        title: Text(''),
        content:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'مكان التحميل',style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: textForm(text: ' اسم الشارع',),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' المدينه',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: 'المنطقة'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: 'المحافظة'),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: textForm(text: 'رقم المبني',
                )),
            Row(
              children: [
                Image.asset('assets/images/vector.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'استخدام عنوان من الخرائط ',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff186987)
                ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'مكان التوصيل ',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black
            ),),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: ' اسم الشارع',
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: textForm(text: 'المدينه'),
            ),
          ],
        ) ),
    Step(
        label: Text('معلومات الشحنه'),
        state: currentStep >2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >=2,
        title: Text(''),
        content:Column(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 30),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0x57186987)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'السعر المتوقع',style: TextStyle(
                     fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xff186987)
                  ),),
                  Text(
                    'ج.م',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff186987)
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 30),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD9D9D9)),
                  borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'نوع الشحنة',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff999797)
                  ),),
                  Text(
                    'وزن الشحنة',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff999797)
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 30),
              width: double.infinity,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD9D9D9)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                ' تاريخ التحميل',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xff999797)
              ),),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 30),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD9D9D9)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'مكان التحميل ',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff999797)
                  ),),
                  Text(
                    'مكان التوصيل ',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff999797)
                  ),)
                ],
              ),
            ),

          ],
        ) ),

  ];

  Widget textForm ({
    required String text,
    Widget? preIcon ,
    int? line,
    Color? color =Colors.white,
}) => TextFormField(
    textAlign: TextAlign.center,
    maxLines: line,
    decoration: InputDecoration(
      filled: true,
        fillColor: color,
        hintText: text,
        suffixIcon: preIcon,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff999797),
        ),
        border: OutlineInputBorder()

    ),
  );
}
