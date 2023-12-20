import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/list_controller.dart';
import 'controller/tap_controller.dart';
import 'my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TapController controller = Get.find();
    ListController controller = Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Third Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child:  Center(child: Text("X value " + Get.find<TapController>().x.toString(),style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),)),
            ),
            Obx(() =>  Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(60,20,60,20),
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple,
                  ),
                  child:  Center(child: Text("Y value " + Get.find<TapController>().y.toString(),style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),)),
                ),
              Container(
        margin: const EdgeInsets.fromLTRB(60,20,60,20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.purple,
        ),
        child:  Center(child: Text("X+Y =  " + Get.find<TapController>().z.toString(),style: const TextStyle(
            fontSize: 30,
            color: Colors.white
        ),)),
      ),
              ],
            ),),
            // Obx(() =>  Container(
            //   margin: const EdgeInsets.fromLTRB(60,20,60,20),
            //   width: double.maxFinite,
            //   height: 70,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.purple,
            //   ),
            //   child:  Center(child: Text("X+Y =  " + Get.find<TapController>().z.toString(),style: const TextStyle(
            //       fontSize: 30,
            //       color: Colors.white
            //   ),)),
            // ),),

            GestureDetector(
              onTap: (){
                Get.back();
                // Get.find<TapController>().increaseX();
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
                Get.to(const MyHomePage(),routeName: '/');
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
           GestureDetector(
             onTap: (){
               Get.find<TapController>().increaseY();
             },
             child: Container(
               margin: const EdgeInsets.fromLTRB(60,20,60,20),
               width: double.maxFinite,
               height: 70,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.purple,
               ),
               child: const Center(child: Text("Increase the Y value ",style: TextStyle(
                   fontSize: 30,
                   color: Colors.white
               ),)),
             ),
           ),
           GestureDetector(
             onTap: (){
               Get.find<TapController>().totalXY();
             },
             child: Container(
               margin: const EdgeInsets.fromLTRB(60,20,60,20),
               width: double.maxFinite,
               height: 70,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.purple,
               ),
               child: const Center(child: Text("Add X and Y value ",style: TextStyle(
                   fontSize: 30,
                   color: Colors.white
               ),)),
             ),
           ),
           GestureDetector(
             onTap: (){
               Get.find<ListController>().setValues(Get.find<TapController>().z);
             },
             child: Container(
               margin: const EdgeInsets.fromLTRB(60,20,60,20),
               width: double.maxFinite,
               height: 70,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.purple,
               ),
               child: const Center(child: Text("Save Total",style: TextStyle(
                   fontSize: 30,
                   color: Colors.white
               ),)),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
