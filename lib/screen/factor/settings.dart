import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/edit_password.dart';
import 'package:trilla1/screen/factor/login.dart';
import 'package:trilla1/screen/factor/person_file.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Text(''),
        title: const Text(
          'الإعدادات',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xff186987),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * .10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Person_File(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'اعدادات الملف الشخصي',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            Icons.settings,
                            color: Color(0xff186987),
                            size: 60,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height * .10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Edit_Password(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تعديل كلمة المرور',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Image.asset('assets/images/setting2.png'),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height * .10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الدعم الفني',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Image.asset('assets/images/setting3.png'),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: size.height * .10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login1_Screen(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تسجيل الخروج',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            Icons.exit_to_app,
                            color: Color(0xff186987),
                            size: 70,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: size.height * .25,
              ),
              Container(
                width: double.infinity,
                height: size.height * .10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff999797)),
                ),
                child: MaterialButton(
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        animType: AnimType.bottomSlide,
                        title: 'هل تريد حذف الحساب ؟',
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black),
                        desc:
                            'سيتم حذف الحساب نهائيًا ولن تتمكن من الوصول إليه مجددًا',
                        descTextStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff999797)),
                        btnCancel: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'إلغاء',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        btnOk: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'تأكيد',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffBB1515)),
                          ),
                        ),
                      ).show();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'حذف الحساب',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 70,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
