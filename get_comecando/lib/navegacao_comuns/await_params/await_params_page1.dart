import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('valor 1');
              },
              child: const Text('Retornando valor'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'valor 1');
              },
              child: const Text('Retornando valor'),
            ),
          ],
        ),
      ),
    );
  }
}
