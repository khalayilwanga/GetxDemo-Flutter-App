import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

import '../controllers/age_controller.dart';
import './widgets/home.dart';




class SecondPage extends StatelessWidget {
  static const routeName = '/second';
  Controller ageController = Get.find<AgeController>();

  


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:  Container(
        child:Row(
          children:[
            Obx(()=>'The age is currently ${ageController.value.age}'),
            FlatButton(
              child: const Text('Add one to Age')
              onPressed: (){
                ageController.incrementAge();
              } 
            ),
            FlatButton(
              child: const Text('Remove one from age')
              onPressed: (){
                ageController.decrementAge();
                }
            ),
            
            FlatButton(
              child: const Text('Back Home')
              onPressed: (){
                Get.toNamed(MyHomePage().routeName);
              }
            ),
          ]
        )
      )
    );
  }
}