import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/getx_widget/getx_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(),
          builder: (controller) {
            return Text(controller.nome);
          },
        ),
      ),
    );
  }
}
