import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/task_card.dart';

class CanceledTaskScreen extends StatelessWidget {
  const CanceledTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        // return const TaskCard();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 4,
        );
      },
    );
  }
}
