import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/third_page.dart';

import 'controller/tap_controller.dart';
import 'my_home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          GetBuilder<TapController>(builder: (_){
            return Container(
              margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child:  Center(child: Text(" ${controller.x.toString()}",style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),)),
            );
          }),
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child:  const Center(child: Text("Go Back",style:  TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),)),
            ),
          ),
          GestureDetector(
            onTap: (){

              Get.to(const ThirdPage(),routeName: "/third");
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child:  const Center(child: Text("Go To Third Page",style:  TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),)),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(const MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child: const Center(child: Text("Go to Home Page",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),)),
            ),
          ),
        ],
      ),
    );

  }
}
