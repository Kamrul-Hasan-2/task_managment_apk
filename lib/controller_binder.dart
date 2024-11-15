import 'package:get/get.dart';
import 'package:task_managment_apk/ui/controller/canceled_task_controller.dart';
import 'package:task_managment_apk/ui/controller/completed_task_controller.dart';
import 'package:task_managment_apk/ui/controller/new_task_list_controller.dart';
import 'package:task_managment_apk/ui/controller/sign_in_controller.dart';
import 'package:task_managment_apk/ui/controller/task_status_list_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SignInController());
    Get.put(NewTaskListController());
    Get.put(TaskStatusListController());
    Get.put(CompletedTaskController());
    Get.put(CanceledTaskController());
  }
}