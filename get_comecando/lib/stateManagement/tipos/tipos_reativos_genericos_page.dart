import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/tipos/model/aluno.dart';

class TiposReativosGenericosPage extends StatelessWidget {
  final nome = Rx<String>('Mateus loiola');
  final isAluno = Rx<bool>(true);
  final qtdCursos = Rx<int>(4);
  final aluno = Rx<Map<String, dynamic>>(
    {
      'id': 01,
      'nome': 'mateus',
      'idade': 24,
      'curso': 'ES',
    },
  );

  final alunoModel = Rx<Aluno>(Aluno(id: '1', nome: 'pedro', idade: 20));

  TiposReativosGenericosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos reativos genericos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                aluno.value['nome'] = 'mateus 2';
                aluno.refresh(); // necessário por conta de usar generics
              },
              child: const Text('Mudar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
