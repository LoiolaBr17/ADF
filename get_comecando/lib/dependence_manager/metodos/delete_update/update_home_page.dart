import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/dependence_manager/metodos/delete_update/update_controller.dart';

class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({super.key}) {
    Get.put(UpdateController(nome: 'add inicio'));
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('aqui'),
            onPressed: () {
              Get.replace(UpdateController(nome: 'trocado'));
            },
          ),
          ElevatedButton(
            child: const Text('aqui 2'),
            onPressed: () {
              Get.delete<UpdateController>();
            },
          ),
        ],
      ),
    );
  }
}
