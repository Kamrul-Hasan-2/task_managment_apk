import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/home/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme:  TextTheme(

        )
      ),
      home: const SplashScreen(),
    );
  }
}
