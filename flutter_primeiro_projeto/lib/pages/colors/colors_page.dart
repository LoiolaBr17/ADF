import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const cor = Colors.blue;
    var cor2 = Colors.blue.withOpacity(0.7);
    var cor3 = const Color.fromRGBO(0,0,255, 1);
    var cor4 = const Color(0XFF17599D);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Container(
        height: 400,
        width: 400,
        color: cor4,
      ),
    );
  }
}
