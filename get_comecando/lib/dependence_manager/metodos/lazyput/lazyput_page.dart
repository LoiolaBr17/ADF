import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/dependence_manager/metodos/lazyput/lazyput_controller.dart';

class LazyputPage extends StatefulWidget {
  LazyputPage({super.key}){
    Get.lazyPut(() => LazyputController(), fenix: true);
    Get.put(() => LazyputController(), permanent: true);
  }

  @override
  State<LazyputPage> createState() => _LazyputPageState();
}

class _LazyputPageState extends State<LazyputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazyput Page'),
      ),
      body: Container(),
    );
  }
}
