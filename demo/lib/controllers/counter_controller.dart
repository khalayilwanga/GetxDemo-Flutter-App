import 'package:get/get.dart'; 

class CounterController extends GetxController{
  var counter = 0
  
  void incrementByOne() => {
    counter++;
    update();
  }


  void decrementByOne()=> {
    counter--;
    update();
  }

  void incrementByTwo() => {
    counter = counter+2;
    update();
  }

  void decrementByTwo()=> {
    counter = counter-2;
    update();
}
}