import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/tipos/model/aluno.dart';

class TiposReativosGenericosNuloPage extends StatelessWidget {
  final nome = Rxn<String>('Mateus loiola');
  final isAluno = Rxn<bool>(true);
  final qtdCursos = Rxn<int>(4);
  final aluno = Rxn<Map<String, dynamic>>(
    {
      'id': 01,
      'nome': 'mateus',
      'idade': 24,
      'curso': 'ES',
    },
  );

  final alunoModel = Rxn<Aluno>(Aluno(id: '1', nome: 'pedro', idade: 20));

  TiposReativosGenericosNuloPage({super.key});

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
                aluno.value?['nome'] = 'mateus 2';
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
