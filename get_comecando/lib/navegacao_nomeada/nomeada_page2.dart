import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NomeadaPage2 extends StatelessWidget {
  const NomeadaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final params = Get.parameters['nome'] ?? '';
    final nome = Get.parameters['nome'] ?? '';
    final id = Get.parameters['id'] ?? -1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Container(),
    );
  }
}
