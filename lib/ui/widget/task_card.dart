import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/app_color.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title of new Task',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text('Description of Task'),
            const Text('Date: 12/12/2024'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildStatusChip(),
                Wrap(
                  children: [
                    IconButton(
                      onPressed: _onTapEditButton,
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: _onTapDeleteButton,
                      icon: const Icon(Icons.delete),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapEditButton() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Edit Status'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: ['New', 'Completed', 'Canceled', 'Progress'].map((e){
                return ListTile(
                  onTap: (){},
                  title: Text(e),
                );
              }).toList(),
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          );
        });
  }

  void _onTapDeleteButton() {}

  Widget _buildStatusChip() {
    return Chip(
      label: const Text(
        'New',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      side: const BorderSide(
        color: AppColor.themeColor,
      ),
    );
  }
}
