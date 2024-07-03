import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trilla1/core/api/end_Points.dart';

import '../../cache/cache_helper.dart';
import 'person_file.dart';

class Person_Screen extends StatefulWidget {
  const Person_Screen({super.key});

  @override
  State<Person_Screen> createState() => _Person_ScreenState();
}

class _Person_ScreenState extends State<Person_Screen> {
  File? image;

  late ImageSource select = ImageSource.camera;

  final imagePicker = ImagePicker();

  uploadImage() async {
    if (image == null) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.question,
        animType: AnimType.bottomSlide,
        btnCancel: Column(
          children: [
            InkWell(
              onTap: () async {
                var pickerImage =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                if (pickerImage != null) {
                  setState(() {
                    image = File(pickerImage.path);
                  });
                } else {}
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'المعرض',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Icon(Icons.camera),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                var pickerImage =
                    await imagePicker.pickImage(source: ImageSource.camera);
                if (pickerImage != null) {
                  setState(() {
                    image = File(pickerImage.path);
                  });
                } else {}
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'الكاميرا',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
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
      'information': 'الاسم',
      'value': CacheHelper().getDataString(key: ApiKey.name) ?? "",
    },
    {
      'information': 'رقم الهاتف ',
      'value': CacheHelper().getDataString(key: ApiKey.phone) ?? "",
    },
    {
      'information': 'الرقم القومي',
      'value': CacheHelper().getDataString(key: ApiKey.id) ?? "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'الملف الشخصي',
          style: TextStyle(
              color: Color(0xff186987),
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Person_File(),
            ));
          },
          child: Center(
            child: Text(
              '  تعديل ',
              style: TextStyle(
                  color: Color(0xff999797),
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_forward,
        //       color: Color(0xff186987),
        //     ),
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 95,
            ),
            InkWell(
              onTap: uploadImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: image == null ? null : FileImage(image!),
                backgroundColor: Color(0xffD9D9D9),
                child: Image.network(
                    CacheHelper().getDataString(key: ApiKey.image) ?? ""),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              CacheHelper().getDataString(key: ApiKey.type) == "user"
                  ? 'عميل'
                  : "سائق",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              CacheHelper().getDataString(key: ApiKey.name) ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color(0xff186987)),
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.bottomRight,
              child: Text(
                'المعلومات',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff186987)),
              ),
            ),
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
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(
                          '${information[index]['value']}',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff186987)),
                        ),
                        Spacer(),
                        Text(
                          '${information[index]['information']}',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ],
                    );
                  }),
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
