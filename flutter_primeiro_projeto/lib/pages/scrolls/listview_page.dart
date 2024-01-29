import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 300,
            child: Center(
              child: Text('Index: ${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
