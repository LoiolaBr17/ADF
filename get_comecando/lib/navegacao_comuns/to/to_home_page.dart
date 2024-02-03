import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/navegacao_comuns/to/page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page1()));
              },
              child: const Text('Go to Page com Flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const Page1());
              },
              child: const Text('Go to Page com Getx'),
            ),
          ],
        ),
      ),
    );
  }
}
