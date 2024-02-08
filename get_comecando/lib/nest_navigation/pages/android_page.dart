import 'package:flutter/material.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android'),
      ),
      body: const Center(child: Icon(Icons.android)),
    );
  }
}
