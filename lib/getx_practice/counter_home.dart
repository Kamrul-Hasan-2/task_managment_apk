import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter App'),
      ),
      body: Center(
          child: GetBuilder<CounterController>(
              init: counterController,
              builder: (counterController) {
                return Text(
                  '${counterController.counter}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}
