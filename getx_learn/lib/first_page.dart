import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_learn/controller/tap_controller.dart';
import 'package:getx_learn/my_home_page.dart';
import 'package:getx_learn/second_page.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller =Get.find();
    return  Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
          centerTitle: true,
          backgroundColor: Colors.blue,

          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
      body: Center(
        child: Column(
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
                controller.decreaseX();
                print(controller.x.toString());
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Decrease the value",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(const SecondPage(),routeName: "/second");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Go to Second Page",style: TextStyle(
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
      )
    );
  }
}
