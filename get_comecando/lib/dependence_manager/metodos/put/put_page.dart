import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/dependence_manager/metodos/put/put_controller.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time put: ${controller.timestamp}')
          ],
        ),
      ),
    );
  }
}
