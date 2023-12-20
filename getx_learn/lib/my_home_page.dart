import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controller/tap_controller.dart';
import 'package:getx_learn/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(

      appBar: AppBar(
        title: const  Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,

        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("Hello World")
              GetBuilder<TapController>(builder: (_){
                return  Container(
                  margin: const EdgeInsets.fromLTRB(60,20,60,20),
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple,
                  ),
                  child:  Center(child: Text(controller.x.toString(),style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),)),
                );

              }),

            GestureDetector(
              onTap: (){
                controller.increaseX();
                controller.x;
                print("value is = ${controller.x}");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Tap to increase",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(const Firstpage(),routeName: "/first");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Go to First Page",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Button Praced");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Tap",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Button Praced");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(60,20,60,20),
              width: double.maxFinite,
              height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("Tap",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),)),
              ),
            ),

            ],
          ),
        ),
      ),
    );
  }
}
