import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NomeadaHomePage extends StatelessWidget {
  const NomeadaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/page1');
              },
              child: const Text('Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
