import 'package:flutter/material.dart';

class ApplePage extends StatelessWidget {
  const ApplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple'),
      ),
      body: const Center(child: Icon(Icons.apple)),
    );
  }
}
