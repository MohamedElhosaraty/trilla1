import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trilla1/screen/driver/driver_person.dart';

class Driver_File extends StatefulWidget {
  const Driver_File({super.key});

  @override
  State<Driver_File> createState() => _Driver_FileState();
}

class _Driver_FileState extends State<Driver_File> {


  File? image;

  late ImageSource select =ImageSource.camera ;

  final imagePicker = ImagePicker();


  uploadImage () async {

    if(image == null ){
      AwesomeDialog (
        context: context,
        dialogType: DialogType.QUESTION,
        animType: AnimType.BOTTOMSLIDE,
        btnCancel: Column(
          children: [
            InkWell(
              onTap: () async {
                var pickerImage = await imagePicker.pickImage(
                    source:  ImageSource.gallery
                );
                if (pickerImage != null ){
                  setState(() {
                    image = File(pickerImage.path);
                  });
                }else{}
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'المعرض',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),),
                  Icon(Icons.camera),
                ],
              ),
            ),
            InkWell(
              onTap:  () async {
                var pickerImage = await imagePicker.pickImage(
                    source:  ImageSource.camera
                );
                if (pickerImage != null ){
                  setState(() {
                    image = File(pickerImage.path);
                  });
                }else{}
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'الكاميرا',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                  ),
                  Icon(Icons.camera_alt_outlined)
                ],
              ),
            ),
          ],
        ),
      ).show();
    }

  }

  List information = [
    {
      'information' : 'الاسم',
      'value' : 'Khaled Ramzy',
    },
    {
      'information' : 'رقم الهاتف ',
      'value' : '01554219639',
    },
    {
      'information' : 'الرقم القومي',
      'value' : '30208011207353',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('الملف الشخصي',style: TextStyle(
            color:Color(0xff186987),fontWeight: FontWeight.w700,fontSize: 20
        ),),
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Driver_Person(),));
          },
          child: Text('  تعديل ',style: TextStyle(
              color:Color(0xff999797),fontWeight: FontWeight.w700,fontSize: 20
          ),),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward,color:Color(0xff186987),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 95,
            ),
            InkWell(
              onTap: uploadImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: image == null ? null :
                FileImage(image!),
                backgroundColor: Color(0xffD9D9D9),
                //child: Image.asset('assets/images/addImage.png'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'سائق',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,color: Colors.black
            ),),
            const SizedBox(
              height: 5,
            ),
            Text(
              'خالد رمزي ابو زهره',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,color: Color(0xff186987)
            ),),
            const SizedBox(
              height: 65,
            ),
            Text(
              'المعلومات',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,
                color: Color(0xff186987)
            ),),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(0xff999797),
                      height: 10,
                      thickness: 2,
                    );
                  },
                  itemCount: information.length,
                  itemBuilder: (context ,index){
                    return Row(
                      children: [
                        Text(
                          '${information[index]['value']}',style: TextStyle(
                            fontWeight: FontWeight.w400,fontSize: 18,
                            color: Color(0xff186987)
                        ),),
                        Spacer(),
                        Text(
                          '${information[index]['information']}',style: TextStyle(
                            fontWeight: FontWeight.w400,fontSize: 18,
                            color: Colors.black
                        ),),
                      ],
                    );
                  }
              ),
            ),
            const Divider(
              color: Color(0xff999797),
              height: 10,
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
