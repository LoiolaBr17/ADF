import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/getbuilder/getbuilder_controller.dart';

class GetbuilderPage extends StatelessWidget {
  const GetbuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
      ),
      body: Center(
        child: GetBuilder<GetbuilderController>(
          builder: (controller) {
            debugPrint('builde do GetBuilder');

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.nome),
                GetBuilder<GetbuilderController>(
                  id: 'contador',
                  builder: (controller) {     
                    debugPrint('builde do GetBuilder do contador');               
                    return Text(
                      controller.contador.toString(),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.alterarNome();
                  },
                  child: const Text('Alterar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text('Alterar'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
