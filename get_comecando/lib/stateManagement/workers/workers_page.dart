import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/workers/workers_controller.dart';

class WorkersPage extends StatelessWidget {
  final controller = Get.find<WorkersController>();

  WorkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value){
                controller.alterarnome(value);
              },
            ),
            Obx(() => Text(controller.nome))
          ],
        ),
      ),
    );
  }
}
