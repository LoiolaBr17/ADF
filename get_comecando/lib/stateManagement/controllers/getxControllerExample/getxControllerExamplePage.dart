import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/controllers/getxControllerExample/controller.dart';

class GetxControllerExamplePage extends StatefulWidget {
  const GetxControllerExamplePage({super.key});

  @override
  State<GetxControllerExamplePage> createState() => _GetxControllerExamplePageState();
}

class _GetxControllerExamplePageState extends State<GetxControllerExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Get.reload<Controller>();
            setState(() => {}); // pra atualizar as referencias de Obx
          },
          child: const Text('Recarregar Controller'),
        ),
      ),
    );
  }
}
