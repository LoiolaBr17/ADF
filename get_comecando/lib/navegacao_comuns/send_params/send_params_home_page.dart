import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/navegacao_comuns/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Parâmetros Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const SendParamsPage1(), arguments: 'lorem lorem');
              },
              child: const Text('Detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
