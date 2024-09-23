import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managment_apk/ui/home/sign_in_screen.dart';
import 'package:task_managment_apk/ui/utils/assets_path.dart';
import 'package:task_managment_apk/ui/widget/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _nextScreenMove();
    // TODO: implement initState
    super.initState();
  }

    Future<void> _nextScreenMove() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsPath.logoSvg,
              width: 140,
            ),
          ],
        ),
      ),
    ));
  }
}
