import 'package:flutter/material.dart';
import 'package:get/get.dart'; 


import './widgets/home.dart';
import './widgets/second.dart';
import './widgets/third.dart';
import './bindings/homeBinding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX DEMO',
      initialRoute: MyHomePage().routeName,
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: SecondPage().routeName, page: () => SecondPage(),binding: BindingsBuilder(()=>{Get.put(AgeController())}),
        GetPage(name: ThirdPage().routeName, page: () => ThirdPage(),binding: BindingsBuilder(()=>{Get.put(CounterController())}),

    );
  }
}


}
