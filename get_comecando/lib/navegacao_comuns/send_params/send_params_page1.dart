import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final paramGet = Get.arguments ?? 'PARAM não enviado';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params Page 1'),
      ),
      body: Container(),
    );
  }
}
