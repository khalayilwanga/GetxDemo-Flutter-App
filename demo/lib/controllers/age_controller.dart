import 'package:get/get.dart'; 

class AgeController extends GetxController{
  var age = 10.obs;
  
  void incrementAge() => age.value++;

  void decrementAge()=> age.value--;

  
}