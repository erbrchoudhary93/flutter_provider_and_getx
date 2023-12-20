import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;

  int get x => _x;

  final RxInt _y = 0.obs;
  RxInt _z = 0.obs;
 int get z => _z.value;
  RxInt get y => _y;


  void increaseX() {
    _x++;
    update();
  }


  void decreaseX() {
    _x--;
    update();
  }
  void increaseY() {
    _y.value++;
    print(_y.value);
  }


  void decreaseY() {
    _y.value--;

  } void totalXY() {
   _z.value= x+_y.value;
   print(_z);
  }


}