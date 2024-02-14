import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PutAsyncPage extends StatelessWidget {
  PutAsyncPage({super.key}){
    Get.putAsync(() async => {
      // final prefs = await SharedPreferences.getInstance();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('put Async'),
      ),
      body: Container(),
    );
  }
}
