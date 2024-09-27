import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/app_color.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Join With Us',
                  style: textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 24,
                ),

                _buildSignUpFormSection(),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Column(
                    children: [
                      _buildSignUpSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildSignUpSection() {
    return RichText(
      text:  TextSpan(
        style: const TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        text: "Have account? ",
        children: [
          TextSpan(
              text: 'Sign In',
              style: const TextStyle(color: AppColor.themeColor),
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpFormSection() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Email',
          ),
        ),

        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'First Name',
          ),
        ),

        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Last Name',
          ),
        ),

        const SizedBox(
          height: 8,
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            hintText: 'Mobile',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Password',
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: _onTapNextScreenButton,
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }

  void _onTapNextScreenButton() {
    //TODO: implement next Screen Button
  }

  void _onTapSignInButton(){
      Navigator.pop(context);
  }



}
