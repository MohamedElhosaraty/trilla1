import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/history.dart';
import 'package:trilla1/screen/factor/home.dart';
import 'package:trilla1/screen/factor/person.dart';
import 'package:trilla1/screen/factor/requests.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {

  int selectedIndex = 3;

  List screen =
  [
    Person_Screen(),
    History_Screen(),
    Requests_Screen(),
    Home_Screen(),
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
            BottomNavigationBarItem(
              icon: selectedIndex == 3 ?
              Image.asset('assets/images/home.png',color: Color(0xff186987),):
              Image.asset('assets/images/home.png') ,

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
