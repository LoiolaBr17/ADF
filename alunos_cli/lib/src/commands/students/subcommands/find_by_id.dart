import 'dart:async';

import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class FindById extends Command {
  final StudentRepository repository;

  @override
  String get description => 'Find Student By Id';

  @override
  String get name => 'byId';

  FindById(this.repository) {
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  FutureOr? run() async {
    if(argResults?['id']  == null) {
      print('Por favor envie o id do aluno com o comando --id=0 ou -i 0');
      return '';
    }

    final id = int.parse(argResults?['id']);

    print('Aguarde buscando dados...');
    final student = await repository.findById(id);
    print('-------------------------------------------------');
    print('Aluno: ${student.name}?');  
    print('-------------------------------------------------');
    print('Nome: ${student.name}');
    print('Idade: ${student.age ?? 'Não informado'}');
    print('Curso:');
    student.nameCourses.forEach(print);
    print('Endereço:');
    print('   ${student.address.street} (${student.address.zipCode})');
  }

}