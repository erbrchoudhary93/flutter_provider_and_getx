import 'package:get/get.dart';

class ListController extends GetxController{
  RxList _list =[].obs;

  void setValues(int x){
    _list.add(x);
    print(_list);
  }
}