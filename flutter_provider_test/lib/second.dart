import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  // final List<int> numbers ;
  const Second({
    super.key,
  // required this.numbers
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:((context,numbersProviderModel,child) =>Scaffold(
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

      body:  SizedBox(
          child: Column(
            children: [
              Text(numbersProviderModel.numbers.last.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 100),),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index){
                    return  Text("${numbersProviderModel.numbers[index].toString()}  ",
                      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),);
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
