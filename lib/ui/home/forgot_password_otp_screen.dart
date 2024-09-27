import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_managment_apk/ui/home/sign_in_screen.dart';
import 'package:task_managment_apk/ui/home/sign_up_screen.dart';
import 'package:task_managment_apk/ui/widget/app_color.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class ForgotPasswordOTPScreen extends StatefulWidget {
  const ForgotPasswordOTPScreen({super.key});

  @override
  State<ForgotPasswordOTPScreen> createState() =>
      _ForgotPasswordOTPScreenState();
}

class _ForgotPasswordOTPScreenState extends State<ForgotPasswordOTPScreen> {
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
                  'Pin Verification',
                  style: textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'A 6 digit verification pin has send to your email address',
                  style: textTheme.bodyLarge!.copyWith(color: Colors.grey),
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
                      const SizedBox(
                        height: 36,
                      ),
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
        PinCodeTextField(
          length: 6,
          obscureText: false,
          keyboardType: TextInputType.number,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            inactiveFillColor: Colors.white,
            activeFillColor: Colors.white,
            selectedFillColor: Colors.white,
          ),
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
          appContext: context,
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: _onTapNextScreenButton,
          child: const Text('Verify'),
        ),
      ],
    );
  }

  Widget _buildVerifyEmailForm() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        text: "Have account? ",
        children: [
          TextSpan(
              text: 'Sign In',
              style: const TextStyle(color: AppColor.themeColor),
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton),
        ],
      ),
    );
  }

  void _onTapNextScreenButton() {
    //TODO: implement next Screen Button
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
        (_) => false);
  }
}
