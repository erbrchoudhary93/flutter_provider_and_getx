import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/list_provider.dart';
import 'package:flutter_bloc_test/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:((context,numbersProviderModel,child) => Scaffold(
      appBar: AppBar(
        title: const Text("Bloc And Provider "),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          numbersProviderModel.add();
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),

      ),

      body: SizedBox(
          child: Column(
                children: [
                Text(numbersProviderModel.numbers.last.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100),),
                Expanded(
                  child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index){
                      return  Text(numbersProviderModel.numbers[index].toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),);
                      },
                            ),
                ),
                  ElevatedButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Second()));
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,

                    ),
                      child: const Text("Second",style: TextStyle(
                        color: Colors.white
                      ),),

                  )
          ],
        ),
        ),
      )),
    );
  }
}
