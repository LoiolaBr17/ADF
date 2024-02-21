import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* ValueBuilder */
            ValueBuilder(
              initialValue: true,
              builder: (snapshot, updater) {
                return TextFormField(
                  obscureText: snapshot,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        updater(!snapshot);
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                );
              },
            ),
            /* ObxValue */
            ObxValue<RxBool>(
              (obscureData) {
                return TextFormField(
                  obscureText: obscureData.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureData.toggle();
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                );
              },
              true.obs,
            ),
          ],
        ),
      ),
    );
  }
}
