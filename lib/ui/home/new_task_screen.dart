import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/home/add_new_task_bar.dart';
import 'package:task_managment_apk/ui/widget/task_card.dart';
import 'package:task_managment_apk/ui/widget/task_summery_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarSection(),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const TaskCard();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 4,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapFAB,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarSection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TaskSummeryCard(
            count: 09,
            title: 'New',
          ),
          TaskSummeryCard(
            count: 09,
            title: 'Completed',
          ),
          TaskSummeryCard(
            count: 09,
            title: 'Canceled',
          ),
          TaskSummeryCard(
            count: 09,
            title: 'Progress',
          ),
        ],
      ),
    );
  }

  void _onTapFAB() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AddNewTaskBar()));
  }
}


