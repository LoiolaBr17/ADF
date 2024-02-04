import 'package:flutter/material.dart';

class OfPage2 extends StatelessWidget {
  const OfPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to page 3 Flutter nativo'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
