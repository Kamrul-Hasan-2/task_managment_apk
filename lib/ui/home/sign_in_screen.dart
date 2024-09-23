import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/custom_text_form_field.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Get Started With',
                style:
                    textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(),
              SizedBox(height: 16,),
              CustomTextFormField(),
              SizedBox(height: 16,),

            ],
          ),
        ),
      ),
    );
  }
}


