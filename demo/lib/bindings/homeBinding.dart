import 'package:get/get.dart'; 
import '.controllers/age_controller.dart';
import '.controllers/counter_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies{
    Get.put<CounterController>(CounterController());
    Get.put<AgeController>(AgeController());
  }
}