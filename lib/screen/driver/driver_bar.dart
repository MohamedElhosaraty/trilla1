import 'package:flutter/material.dart';
import 'package:trilla1/screen/driver/driver_file.dart';
import 'package:trilla1/screen/driver/driver_request.dart';
import 'package:trilla1/screen/driver/payment_time.dart';
import 'package:trilla1/screen/factor/history.dart';
import 'package:trilla1/screen/factor/person.dart';
import 'package:trilla1/screen/factor/requests.dart';

class Driver_bar extends StatefulWidget {
  const Driver_bar({super.key});

  @override
  State<Driver_bar> createState() => _Driver_barState();
}

class _Driver_barState extends State<Driver_bar> {

  int selectedIndex = 0;

  List screen =
  [
    Driver_File(),
    Payment_Time(),
    Driver_Request(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xff186987),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels:false ,

        items:
        [
          BottomNavigationBarItem(
            icon:Icon( Icons.person),
            label:'الملف الشخصي',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1 ?
            Image.asset('assets/images/icons2.png',color: Color(0xff186987),):
            Image.asset('assets/images/icons2.png') ,
            label:' السجل',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2 ?
            Image.asset('assets/images/icons3.png',color: Color(0xff186987),):
            Image.asset('assets/images/icons3.png') ,

            label: ' الطلبات',
          ),
        ],
        onTap: (index){
          setState(() {
            selectedIndex =index;
          });
        },
      ),
    );
  }
}
