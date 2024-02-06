import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NomeadaPage1 extends StatelessWidget {
  const NomeadaPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/page1', arguments: 'paramtro 1');
              },
              child: const Text('Página que nao existe'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('page1/121');
              },
              child: const Text('Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('envioParametros/queryParams?nome=Rodrigo Pereira&id=1');
              },
              child: const Text('QueryParams'),
            ),
          ],
        ),
      ),
    );
  }
}
