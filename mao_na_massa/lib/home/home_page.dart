import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_alarm_outlined))
        ],
      ),
      drawer: const Drawer(
          child: Center(
        child: Text('Drawer Aberto'),
      )),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.red,
          child: const Text('Primeiro Texto'),
        ),
      ),
    );
  }
}
