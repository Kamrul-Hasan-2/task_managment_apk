import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/widget/app_color.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() => _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
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
                  'Your Email Address',
                  style: textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8,),

                Text(
                  'A 6 digit verification pin will send to your email address',
                  style: textTheme.bodyLarge!
                      .copyWith(color:  Colors.grey),
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
                      const SizedBox(height: 36,),
                      _buildVerifyEmailForm(),
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
          height: 24,
        ),
        ElevatedButton(
          onPressed: _onTapNextScreenButton,
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }



  Widget _buildVerifyEmailForm() {
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

  void _onTapNextScreenButton() {
    //TODO: implement next Screen Button
  }

  void _onTapSignInButton(){
    Navigator.pop(context);
  }



}
