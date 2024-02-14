import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/dependence_manager/metodos/create/create_controller.dart';

class CreatePage extends StatelessWidget {
  CreatePage({super.key}) {
    Get.create(() => CreateController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Page'),
      ),
      body: Container(),
    );
  }
}
