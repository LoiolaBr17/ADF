import 'package:get/get.dart';
import 'package:get_comecando/initialBinding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'mateus',
        email: 'mateustaua16@gmail.com',
        curso: 'ES',
      ),
      permanent: true, // garantia que o get nao vai excluir
    );
  }
}
