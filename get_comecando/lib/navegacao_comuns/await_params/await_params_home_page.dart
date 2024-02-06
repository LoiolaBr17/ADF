import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/navegacao_comuns/await_params/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Params Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AwaitParamsPage1(),
                  ),
                );

                print(result);
              },
              child: const Text('Page 1'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Get.to(AwaitParamsPage1);

                print(result);
              },
              child: const Text('Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
