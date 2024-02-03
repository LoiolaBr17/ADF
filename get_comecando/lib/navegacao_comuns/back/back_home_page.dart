import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/navegacao_comuns/back/back_page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BackPage1()));
            },
            child: const Text(''),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const BackPage1());
            },
            child: const Text(''),
          ),
        ],
      ),
    );
  }
}
