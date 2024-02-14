
import 'package:get/get.dart';
import 'package:get_comecando/bindings/bindings_controller.dart';

class BindingsExample extends Bindings {
  
  @override
  void dependencies() {
    Get.put(BindingsController(name: 'teste'));
  }
}