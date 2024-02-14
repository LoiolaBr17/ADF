import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/bindings/bindings_controller.dart';

class HomeBindingsPage extends StatelessWidget {
  const HomeBindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Get.find<BindingsController>().name)
          ],
        ),
      ),
    );
  }
}
