import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../models/student.dart';
import '../../../repositories/student_repository.dart';

class Delete extends Command{
  StudentRepository repository;

  @override
  String get description => 'Delete Student by ID';

  @override
  String get name => 'delete';

  Delete(this.repository) {
    argParser.addOption('id', help: 'Student id', abbr: 'i');
  }

  @override
  FutureOr? run() async {
    final id = int.tryParse(argResults?['id']);

    if(id == null){
      print('Por favor informe o id do aluno com o comando --id=1 ou -i 1');
      return '';
    }

    print('Aguarde...');
    final student = await repository.findById(id);

    print('Confirma a exclusão do aluno: ${student.name} ? (S ou N)');

    final confirmDelete = stdin.readLineSync();

    if(confirmDelete?.toLowerCase() == 's') {
      await repository.deleteById(id);
      print('--------------------------------------');
      print('Aluno deletado com sucesso.');
      print('--------------------------------------');
    } else {
      print('--------------------------------------');
      print('Operação Cancelada!');
      print('--------------------------------------');
    }
  }
}