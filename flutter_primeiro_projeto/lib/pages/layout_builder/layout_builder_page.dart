import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,
                ),
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,  
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
