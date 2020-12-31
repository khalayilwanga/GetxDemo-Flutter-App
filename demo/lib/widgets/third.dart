import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

import '../controllers/counter_controller.dart';
import './widgets/home.dart';



class ThirdPage extends StatelessWidget {
  static const routeName = '/third';
  Controller counterController = Get.find<CounterController>();

  


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:Container(
        child:Row(
          children:[
            Text('The counter is currently ${counterController.counter}'),
            FlatButton(
              child: const Text('Add one ')
              onPressed: (){
                counterController.incrementByOne();
              } 
            ),
            FlatButton(
              child: const Text('Remove one ')
              onPressed: (){
                ageController.decrementByOne();
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