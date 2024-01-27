import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  const Detalhe2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes 2'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Voltar'),
          onPressed: () {
            Navigator.of(context).pop('Parametro retornado pela pega 2');
          },
        ),
      ),
    );
  }
}
