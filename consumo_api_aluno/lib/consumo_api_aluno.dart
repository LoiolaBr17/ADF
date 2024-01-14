import 'package:consumo_api_aluno/repositories/aluno_repository.dart';

void main() async {
  final alunoRepository = AlunoRepository();

  final alunos = await alunoRepository.buscarTodos();

  print(alunos);
}
