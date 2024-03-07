import 'package:flutter/material.dart';
import 'package:trilla1/screen/factor/addrequest.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/image2.png'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child :const Text.rich(
              textDirection: TextDirection.rtl,
              TextSpan(
                text: 'شُحنتي',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "، نحن ندرك أن السفر لمسافات طويله مرهق",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "   \n\n        نحن هٌنا لخدمتك ..",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )
                ]
              )
            )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.13,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width*.80,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  textDirection: TextDirection.rtl,
                  TextSpan(
                    text: "أهلا ,",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan(
                        text: " \n\nهل تحتاج لشحن البضائع ؟    "
                      )
                    ]
                  ),

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*.35,
                  decoration:const BoxDecoration(
                      color: Color(0xff186987),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AddRequest(),));
                    },
                    child: Text(
                      'طلب شحنه الآن',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
