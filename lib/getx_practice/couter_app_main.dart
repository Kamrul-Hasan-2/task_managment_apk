import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_apk/getx_practice/counter_home.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const CounterHome(),
      initialBinding: ControllerBinder(),
    );
  }
}

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
