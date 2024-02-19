import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/stateManagement/atualizacao/usuario_model.dart';

class AtualizacaoObjetosPage extends StatelessWidget {
  final alunoModel =
      UsuarioModel(id: 1, nome: 'mateus', email: 'mateustaua16').obs;

  AtualizacaoObjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualização Objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return Text('${alunoModel.value.id}');
            }),
            Obx(
              () => Text(alunoModel.value.nome),
            ),
            Obx(
              () => Text(alunoModel.value.email),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.value.nome = 'pedro';
                alunoModel.refresh();
              },
              child: const Text('atualizando com refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                // Design pattern prototype
                // Estamos criando outro objeto
                alunoModel.value = alunoModel.value.copyWith(nome: 'guilherme');
              },
              child: const Text('atualizando com copyWith'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.update((aluno) {
                  aluno?.nome = 'Guilherme com update'; 
                });
              },
              child: const Text('atualizando com update'),
            ),
          ],
        ),
      ),
    );
  }
}
