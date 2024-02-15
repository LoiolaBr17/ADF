import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  final nome = RxString('Mateus loiola');
  final isAluno = RxBool(true);
  final qtdCursos = RxInt(4);
  final valorCursos = RxDouble(1901.90);
  final jornadas = RxList([
    'Jornarda Getx',
    'Jornarda ADF',
  ]);
  final aluno = RxMap({
    'id': 01,
    'nome': 'mateus',
    'idade': 24,
    'curso': 'ES'
  });

  TiposReativosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Container(),
    );
  }
}
