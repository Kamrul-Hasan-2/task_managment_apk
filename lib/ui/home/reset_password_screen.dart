import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_managment_apk/ui/home/forgot_password_otp_screen.dart';
import 'package:task_managment_apk/ui/home/sign_in_screen.dart';
import 'package:task_managment_apk/ui/widget/app_color.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                  'Minimum number of password should be 8 latter',
                  style: textTheme.bodyLarge!
                      .copyWith(color:  Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),

                _buildResetPasswordSection(),
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


  Widget _buildResetPasswordSection() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Password',
          ),
        ),
        const SizedBox(height: 8,),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Confirm Password',
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
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
            (_) => false);
  }

  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
            (_) => false);
  }

}
