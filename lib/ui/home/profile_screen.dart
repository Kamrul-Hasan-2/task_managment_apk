import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/tm_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: const TMAppBar(
        isProfileScreenOpen: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'Updated Profile',
                style: Theme.of(context).textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 36,
              ),
              _buildPhotoPicker(),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Email'
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'First Name'
                ),
              ),
              const SizedBox(
                height: 8,
              ),

              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Last Name'
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Phone Number'
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password'
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoPicker() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              )
            ),
            alignment: Alignment.center,
            // child: const Icon(Icons.camera_alt),
            child: const Text('Photo', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(width: 8,),
          const Text('Selected Photo', style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),)
        ],
      )
    );
  }
}
