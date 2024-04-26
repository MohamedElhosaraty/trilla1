import 'package:flutter/material.dart';

class Map_Screen extends StatelessWidget {
  const Map_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset("assets/images/map.png",)),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.90,right: 20,left: 20) ,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff186987),
                borderRadius: BorderRadius.circular(10)
            ),
            child: MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text ('إضافة عنوان',style: TextStyle(
                  fontSize: 20,color: Colors.white
              ),),
            ),
          )
        ],
      ),
    );
  }
}
