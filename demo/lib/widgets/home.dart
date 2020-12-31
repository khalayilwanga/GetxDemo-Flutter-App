import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

import '../controllers/counter_controller.dart';
import '../controllers/age_controller.dart';
import './widgets/second.dart';
import './widgets/third.dart';




class MyHomePage extends StatelessWidget {
  static const routeName = '/';
  Controller counterController = Get.find<CounterController>();
  Controller ageController = Get.find<AgeController>();


  


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child:Row(
          children:[
            Text('The counter is currently ${counterController.counter}'),
            Obx(()=>'The age is currently ${ageController.value.age}'),
            FlatButton(
              child: const Text('Second Page'),
              onPressed: (){
                Get.toNamed(SecondPage().routeName);
              }
              
            ),
            FlatButton(
              child: const Text('Third Page'),
              onPressed: (){
                Get.toNamed(ThirdPage().routeName);

              }
            ),
          ]
        )
      )
    );
  }
}