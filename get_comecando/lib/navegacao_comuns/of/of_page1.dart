import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/navegacao_comuns/of/of_page3.dart';

class OfPage1 extends StatelessWidget {
  const OfPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {

            },
            child: const Text('Go to page 2 Flutter nativo'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(const OfPage3());
            },
            child: const Text('Go to page 2'),
          ),
        ],
      ),
    );
  }
}
