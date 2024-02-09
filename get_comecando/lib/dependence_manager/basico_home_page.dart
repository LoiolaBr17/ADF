import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/dependence_manager/basico_home_page_controller.dart';

class BasicoHomePage extends StatelessWidget {
  final controller = Get.put(BasicoHomePageController());

  BasicoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(controller.nome);
              },
            ),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.find<BasicoHomePageController>().alterarNome('mateus nome teste');
      },
      child: const Text('alterar nome'),
    );
  }
}
