import 'package:get/get.dart';
import 'package:task_managment_apk/ui/controller/sign_in_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}