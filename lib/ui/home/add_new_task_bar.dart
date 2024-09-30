import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/tm_app_bar.dart';

class AddNewTaskBar extends StatefulWidget {
  const AddNewTaskBar({super.key});

  @override
  State<AddNewTaskBar> createState() => _AddNewTaskBarState();
}

class _AddNewTaskBarState extends State<AddNewTaskBar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TMAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 42,
              ),
              Text('Add New Task' ,style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'title'
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                    hintText: 'Description'
                ),
              ),
          
              const SizedBox(
                height: 24,
              ),
          
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined))
          
            ],
          ),
        ),
      )
    );
  }
}
